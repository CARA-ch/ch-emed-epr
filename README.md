# IG CH-EMED-EPR

![Validation workflow](https://github.com/CARA-ch/ch-emed-epr/actions/workflows/validation.yml/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/CARA-ch/ch-emed-epr)
![GitHub last commit](https://img.shields.io/github/last-commit/CARA-ch/ch-emed-epr)

FHIR Implementation Guide which defines the documents for the exchange of medication information in the context of the Swiss eMedication service.

To compile the FSH files, use [SUSHI](https://github.com/FHIR/sushi):
```bash
sushi .
```

To compile the full profile (it will automatically run SUSHI), use the [IG Publisher](https://github.com/HL7/fhir-ig-publisher):
```bash
java -jar publisher.jar -ig ig.ini
```

## Versions

| Version  | Url                                            |
| -------- | ---------------------------------------------- |
| CI Build | https://build.fhir.org/ig/CARA-ch/ch-emed-epr/ |
| ?        | ?                                              |

The changelog is available in the file `input/pagecontent/changelog.md` and published within the profile.

## CI Build

On commit on the master branch, a workflow ensures [SUSHI](https://github.com/FHIR/sushi) can run without errors on the project,
and GitHub triggers the HTTP endpoint of the [FHIR autobuild server](https://github.com/FHIR/auto-ig-builder) with the details of the project.
The build status is posted in [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build),
the [build logs](http://build.fhir.org/ig/CARA-ch/ch-emed-epr/branches/master/build.log) are also available if needed.
