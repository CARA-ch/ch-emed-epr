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

    private final StringBuilder listOutput;

    private final StringBuilder failureDetailsOutput;

    private final MatchboxEngine engine;

    private final Map<String, String> resources = new HashMap<>(48);

    private final Instant startTime;

    public static void main(String[] args) throws Exception {
        for (final var entry : System.getenv().entrySet()) {
            log.info(String.format("env.%s=%s", entry.getKey(), entry.getValue()));
        }
        final var runner = new ValidationRunner(System.getenv("GITHUB_STEP_SUMMARY"));
        runner.run();
    }

    public ValidationRunner(final String jobSummaryPath)
            throws IOException, URISyntaxException, ParserConfigurationException {
        Objects.requireNonNull(jobSummaryPath, "jobSummaryPath shall not be null in ValidationRunner()");
        log.info("Using job summary path: " + jobSummaryPath);

        this.startTime = Instant.now();
        this.jobSummaryOutput = new FileOutputStream(jobSummaryPath);
        this.listOutput = new StringBuilder();
        this.failureDetailsOutput = new StringBuilder();
        this.engine = new MatchboxEngine.MatchboxEngineBuilder().getEngineR4();
        this.engine.getIgLoader().loadIg(this.engine.getIgs(),
                                         this.engine.getBinaries(),
                                         "http://build.fhir.org/ig/hl7ch/ch-core/package.tgz",
                                         true);
        this.engine.getIgLoader().loadIg(this.engine.getIgs(),
                                         this.engine.getBinaries(),
                                         "http://build.fhir.org/ig/hl7ch/ch-emed/package.tgz",
                                         true);
        this.engine.getIgLoader().loadIg(this.engine.getIgs(),
                                         this.engine.getBinaries(),
                                         "./output/package.tgz",
                                         true);

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
        this.writeJobSummary("| Test result \uD83D\uDD0E | Passed ✅ | Failed ❌ | Total \uD83D\uDCC4 | Time duration ⏱ |\n");
        this.writeJobSummary("|---|---|---|---|---|\n");
        this.writeJobSummary(String.format("|%s|%d|%d|%d|%dm %ds|\n\n",
                                           status,
                                           successes,
                                           failures,
                                           successes + failures,
                                           duration.toMinutesPart(),
                                           duration.toSecondsPart()));
        this.writeJobSummary(String.format("<img src=\"%s?p=%d&f=%d\" />\n\n",
                                           "https://svg.test-summary.com/dashboard.svg",
                                           successes,
                                           failures));
        this.writeJobSummary("### Resources\n\n");
        this.writeJobSummary(this.listOutput.toString());
        this.writeJobSummary("### Failure details\n\n");
        this.writeJobSummary(this.failureDetailsOutput.toString());

        if (failures > 0) {
            throw new RuntimeException("The validation of " + failures + " resource failed");
        }
    }

    private void listIgResources() {
        this.add2Resources("output/Bundle-BundlePml1", "ch-emed-epr-document-medicationlist");
        this.add2Resources("output/Bundle-BundlePmlc1", "ch-emed-epr-document-medicationcard");
        this.add2Resources("output/Bundle-DocumentMtp1", "ch-emed-epr-document-medicationtreatmentplan");
        this.add2Resources("output/Device-DevicePmp", "ch-emed-epr-device");
        this.add2Resources("output/Medication-MedicationNorvasc", "ch-emed-epr-medication");
        this.add2Resources("output/Medication-MedicationTriatec", "ch-emed-epr-medication");
        this.add2Resources("output/Medication-MedicationWithATC", "ch-emed-epr-medication");
        this.add2Resources("output/Medication-MedicationWithTwoIngredients", "ch-emed-epr-medication");
        this.add2Resources("output/MedicationStatement-MedicationStatementTriatecMtp", "ch-emed-epr-medicationstatement-treatmentplan");
        this.add2Resources("output/Organization-OrganizationCara", "ch-emed-epr-organization");
        this.add2Resources("output/Organization-OrganizationHug", "ch-emed-epr-organization");
        this.add2Resources("output/Patient-PatientDupont", "ch-emed-epr-patient");
        this.add2Resources("output/Practitioner-PractitionerCox", "ch-emed-epr-practitioner");
        this.add2Resources("output/PractitionerRole-PractitionerRoleCoxAtHug", "ch-emed-epr-practitionerrole");
    }

    private boolean validateFile(final String filePath,
                                 final String profileUrl) {
        final Manager.FhirFormat format = (filePath.endsWith(".json")) ? Manager.FhirFormat.JSON : Manager.FhirFormat.XML;
        try {
            final OperationOutcome outcome;
            try (final var is = new FileInputStream(filePath)) {
                outcome = this.engine.validate(is, format, profileUrl);
            }

            if (outcome.getIssue().stream().anyMatch(issue -> issue.getSeverity() == OperationOutcome.IssueSeverity.ERROR || issue.getSeverity() == OperationOutcome.IssueSeverity.FATAL)) {
                this.listOutput.append(String.format("%s %s\n", IMG_FAIL, filePath));

                this.failureDetailsOutput.append(String.format("#### %s\n```\n", filePath));
                this.failureDetailsOutput.append(String.format("Profile URL: %s\n",
                                                     profileUrl));
                for (final var issue : outcome.getIssue()) {
                    this.failureDetailsOutput.append(String.format("%s %s\n",
                                                         issue.getSeverity().name(),
                                                         issue.getDetails().getText()));
                }
                this.failureDetailsOutput.append("```\n");
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
            this.failureDetailsOutput.append("```log\n");
            this.failureDetailsOutput.append(sw);
            this.failureDetailsOutput.append("```\n\n");

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
     * @see <a href="https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#adding-a-job-summary">Adding a job summary</a>
     */
    private void writeJobSummary(final String content) throws IOException {
        this.jobSummaryOutput.write(content.getBytes(StandardCharsets.UTF_8));
    }
}
