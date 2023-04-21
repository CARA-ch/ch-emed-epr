package ch.cara;

import ch.ahdis.matchbox.engine.MatchboxEngine;
import org.apache.logging.log4j.util.TriConsumer;
import org.hl7.fhir.r4.model.OperationOutcome;
import org.hl7.fhir.r5.elementmodel.Manager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;

class ValidationRunner {
    private static final Logger log = LoggerFactory.getLogger(ValidationRunner.class);

    private final FileOutputStream jobSummaryOutput;

    private final StringBuilder detailOutput;

    private final MatchboxEngine engine;

    private final Map<String, String> resources = new HashMap<>(48);

    private final Instant startTime;

    public static void main(String[] args) throws Exception {
        if (args.length != 1) {
            throw new RuntimeException("The application first argument must be $GITHUB_STEP_SUMMARY");
        }

        final var runner = new ValidationRunner(args[0]);
        runner.run();
    }

    public ValidationRunner(final String jobSummaryPath) throws IOException, URISyntaxException {
        this.startTime = Instant.now();
        this.jobSummaryOutput = new FileOutputStream(jobSummaryPath);
        this.detailOutput = new StringBuilder();
        this.engine = new MatchboxEngine.MatchboxEngineBuilder().getEngineR4();
        this.engine.getIgLoader().loadIg(this.engine.getIgs(),
                                         this.engine.getBinaries(),
                                         "./output/package.tgz",
                                         true);
        this.listIgResources();
        this.listOtherResources();
    }

    public void run() throws IOException {
        int successes = 0;
        int failures = 0;

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

        this.summaryWrite("## Validation run summary\n\n");
        this.summaryWrite("| Test result \uD83D\uDD0E | Passed ✅ | Failed ❌ | Total \uD83D\uDCC4 | Time duration ⏱ |\n");
        this.summaryWrite("|---|---|---|---|---|\n");
        this.summaryWrite(String.format("|%s|%d|%d|%d|%dm %ds|\n\n",
                                        status,
                                        successes,
                                        failures,
                                        successes + failures,
                                        duration.toMinutesPart(),
                                        duration.toSecondsPart()));

        this.summaryWrite("### Details\n\n");
        this.summaryWrite(this.detailOutput.toString());

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
        try {
            final OperationOutcome outcome;
            try (final var is = new FileInputStream(filePath)) {
                outcome = this.engine.validate(is, format, profileUrl);
            }

            if (outcome.getIssue().stream().anyMatch(issue -> issue.getSeverity() == OperationOutcome.IssueSeverity.ERROR || issue.getSeverity() == OperationOutcome.IssueSeverity.FATAL)) {
                this.detailOutput.append(String.format("❌ %s<br>\n", filePath));
                this.detailOutput.append(String.format("    Profile URL: *%s*\n",
                                                       profileUrl));
                for (final var issue : outcome.getIssue()) {
                    this.detailOutput.append(String.format("    `%s` %s\n",
                                                           issue.getSeverity().name(),
                                                           issue.getDetails().getText()));
                }
                return false;
            } else {
                this.detailOutput.append(String.format("✅ %s\n", filePath));
                return true;
            }
        } catch (final Exception exception) {
            this.detailOutput.append(String.format("❌ %s\n", filePath));
            this.detailOutput.append("```log\n");
            final var sw = new StringWriter();
            final var pw = new PrintWriter(sw);
            exception.printStackTrace(pw);
            this.detailOutput.append(sw);
            this.detailOutput.append("```log\n");
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

    private void summaryWrite(final String content) throws IOException {
        this.jobSummaryOutput.write(content.getBytes(StandardCharsets.UTF_8));
    }
}
