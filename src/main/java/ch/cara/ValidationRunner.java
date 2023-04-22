package ch.cara;

import ch.ahdis.matchbox.engine.MatchboxEngine;
import org.hl7.fhir.r4.model.OperationOutcome;
import org.hl7.fhir.r5.elementmodel.Manager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.io.*;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

class ValidationRunner {
    private static final Logger log = LoggerFactory.getLogger(ValidationRunner.class);
    private static final String IMG_PASS =
            "<img src=\"https://svg.test-summary.com/icon/pass.svg?s=12\" alt=\"PASS\" />";
    private static final String IMG_FAIL =
            "<img src=\"https://svg.test-summary.com/icon/fail.svg?s=12\" alt=\"PASS\" />";

    private final FileOutputStream jobSummaryOutput;

    private final FileOutputStream outputStream;

    private final StringBuilder listOutput;

    private final StringBuilder failureDetailsOutput;

    private final MatchboxEngine engine;

    private final Map<String, String> resources = new HashMap<>(48);

    private final Instant startTime;

    // https://howtodoinjava.com/junit5/xml-reports/#3-junit-xml-reports-in-legacy-format
    // https://www.ibm.com/docs/en/developer-for-zos/14.1?topic=formats-junit-xml-format
    private final Element junitTestsuite;

    public static void main(String[] args) throws Exception {
        final var runner = new ValidationRunner(
                System.getenv("GITHUB_STEP_SUMMARY"),
                System.getenv("GITHUB_OUTPUT")
        );
        runner.run();
    }

    public ValidationRunner(final String jobSummaryPath,
                            final String outputPath)
            throws IOException, URISyntaxException, ParserConfigurationException {
        Objects.requireNonNull(jobSummaryPath, "jobSummaryPath shall not be null in ValidationRunner()");
        Objects.requireNonNull(outputPath, "outputPath shall not be null in ValidationRunner()");
        log.info("Using job summary path: " + jobSummaryPath);
        log.info("Using output path: " + outputPath);
        this.startTime = Instant.now();
        this.jobSummaryOutput = new FileOutputStream(jobSummaryPath);
        this.outputStream = new FileOutputStream(outputPath);
        this.listOutput = new StringBuilder();
        this.failureDetailsOutput = new StringBuilder();
        this.engine = new MatchboxEngine.MatchboxEngineBuilder().getEngineR4();
        this.engine.getIgLoader().loadIg(this.engine.getIgs(),
                                         this.engine.getBinaries(),
                                         "./output/package.tgz",
                                         true);
        final var document = DocumentBuilderFactory.newDefaultInstance().newDocumentBuilder().newDocument();
        this.junitTestsuite = document.createElement("testsuite");
        document.appendChild(this.junitTestsuite);
        this.listIgResources();
        this.listOtherResources();
    }

    public void run() throws IOException, TransformerException {
        int successes = 0;
        int failures = 0;

        log.info("Running validation of " + this.resources.size() + " resources");
        for (final var entry : this.resources.entrySet()) {
            final String filePath = entry.getKey();
            final String profileUrl = "https://fhir.cara.ch/StructureDefinition/" + entry.getValue();
            if (!this.validateFile(filePath, profileUrl)) {
                ++failures;
            } else {
                ++successes;
            }
        }

        final String status = (failures > 0) ? "\uD83D\uDD34 Fail" : "\uD83D\uDFE2 Pass";
        final Duration duration = Duration.between(this.startTime, Instant.now());

        // Write to markdown
        this.writeJobSummary("## Validation run summary\n\n");
        this.writeJobSummary("| Test result \uD83D\uDD0E | Passed ✅ | Failed ❌ | Total \uD83D\uDCC4 | Time duration ⏱ |\n");
        this.writeJobSummary("|---|---|---|---|---|\n");
        this.writeJobSummary(String.format("|%s|%d|%d|%d|%dm %ds|\n\n",
                                           status,
                                           successes,
                                           failures,
                                           successes + failures,
                                           duration.toMinutesPart(),
                                           duration.toSecondsPart()));
        this.writeJobSummary("### Resources\n\n");
        this.writeJobSummary(this.listOutput.toString());
        this.writeJobSummary("### Failure details\n\n");
        this.writeJobSummary(this.failureDetailsOutput.toString());

        // Write to the JUnit report file
        this.junitTestsuite.setAttribute("tests", String.valueOf(failures + successes));
        this.junitTestsuite.setAttribute("failures", String.valueOf(failures));
        this.junitTestsuite.setAttribute("disabled", "0");
        this.junitTestsuite.setAttribute("errors", "0");
        this.junitTestsuite.setAttribute("time", String.valueOf(duration.toSeconds()));
        this.junitTestsuite.setAttribute("name", "AllTest");
        final TransformerFactory transformerFactory = TransformerFactory.newInstance();
        final Transformer transformer = transformerFactory.newTransformer();
        final StreamResult result = new StreamResult(new FileWriter("report.xml"));
        transformer.transform(new DOMSource(this.junitTestsuite.getOwnerDocument()), result);

        // Write to the output parameters
        this.writeParameterOutput("passed", String.valueOf(successes));
        this.writeParameterOutput("failed", String.valueOf(failures));
        this.writeParameterOutput("skipped", "0");
        this.writeParameterOutput("total", String.valueOf(failures + successes));

        if (failures > 0) {
            throw new RuntimeException("The validation of " + failures + " resource failed");
        }
    }

    private void listIgResources() {
        this.add2Resources("output/Bundle-BundlePml1", "ch-emed-epr-document-medicationlist");
        this.add2Resources("output/Bundle-BundlePmlc1", "ch-emed-epr-document-medicationcard");
        this.add2Resources("output/Device-DevicePmp", "ch-emed-epr-device");
    }

    private boolean validateFile(final String filePath,
                                 final String profileUrl) {
        final Manager.FhirFormat format = (filePath.endsWith(".json")) ? Manager.FhirFormat.JSON : Manager.FhirFormat.XML;
        final Element testCase = this.junitTestsuite.getOwnerDocument().createElement("testcase");
        testCase.setAttribute("name", filePath);
        testCase.setAttribute("status", "run");
        this.junitTestsuite.appendChild(testCase);
        try {
            final OperationOutcome outcome;
            try (final var is = new FileInputStream(filePath)) {
                outcome = this.engine.validate(is, format, profileUrl);
            }

            if (outcome.getIssue().stream().anyMatch(issue -> issue.getSeverity() == OperationOutcome.IssueSeverity.ERROR || issue.getSeverity() == OperationOutcome.IssueSeverity.FATAL)) {
                this.listOutput.append(String.format("%s %s\n", IMG_FAIL, filePath));

                this.failureDetailsOutput.append(String.format("#### %s\n", filePath));
                this.failureDetailsOutput.append(String.format("Profile URL: *%s*\n",
                                                     profileUrl));
                for (final var issue : outcome.getIssue()) {
                    this.failureDetailsOutput.append(String.format("`%s` %s\n",
                                                         issue.getSeverity().name(),
                                                         issue.getDetails().getText()));
                    final Element failure = testCase.getOwnerDocument().createElement("failure");
                    failure.setAttribute("message", issue.getDetails().getText());
                    failure.setAttribute("severity", issue.getSeverity().name());
                    failure.appendChild(failure.getOwnerDocument().createTextNode(issue.getDetails().getText()));
                    testCase.appendChild(failure);
                }
                this.failureDetailsOutput.append("\n");
                return false;
            } else {
                this.listOutput.append(String.format("%s %s\n", IMG_PASS, filePath));
                return true;
            }
        } catch (final Exception exception) {
            final var sw = new StringWriter();
            exception.printStackTrace(new PrintWriter(sw));

            this.listOutput.append(String.format("%s %s\n", IMG_FAIL, filePath));

            this.failureDetailsOutput.append(String.format("#### %s\n", filePath));
            this.failureDetailsOutput.append(String.format("Profile URL: *%s*\n", profileUrl));
            this.failureDetailsOutput.append("```log\n");
            this.failureDetailsOutput.append(sw);
            this.failureDetailsOutput.append("```\n\n");

            final Element failure = testCase.getOwnerDocument().createElement("failure");
            failure.setAttribute("message", exception.getMessage());
            failure.setAttribute("severity", "FATAL");
            failure.appendChild(failure.getOwnerDocument().createTextNode(sw.toString()));
            testCase.appendChild(failure);
            return false;
        }
    }

    private void add2Resources(final String resourcePath,
                               final String profileUrl) {
        this.resources.put(resourcePath + ".json", profileUrl);
        this.resources.put(resourcePath + ".xml", profileUrl);
    }

    private void listOtherResources() {

    }

    /**
     * Appends content to the GitHub Action job summary.
     *
     * @param content The markdown content to append.
     * @throws IOException if the job summary file is not writable.
     * @see <a href="https://github.blog/2022-05-09-supercharging-github-actions-with-job-summaries/">Supercharging GitHub Actions with Job Summaries</a>
     * @see <a href="https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#adding-a-job-summary"Adding a job summary></a>
     */
    private void writeJobSummary(final String content) throws IOException {
        this.jobSummaryOutput.write(content.getBytes(StandardCharsets.UTF_8));
    }

    /**
     * Writes a parameter to the GitHub Action output.
     *
     * @param name  The parameter's name.
     * @param value The parameter's value.
     * @throws IOException if the output file is not writable.
     * @see <a href="https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#setting-an-output-parameter">Setting an output parameter</a>
     * @see <a href="https://github.com/test-summary/action/blob/main/src/index.ts">action/index.ts</a>
     */
    private void writeParameterOutput(final String name,
                                      final String value) throws IOException {
        this.outputStream.write(String.format("%s=%s\n", name, value).getBytes(StandardCharsets.UTF_8));
    }
}
