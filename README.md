# IG CH-EMED-EPR

To compile the FSH files:
```bash
sushi .
```

To compile the full profile (it will automatically run SUSHI):
```bash
java -jar publisher.jar -ig ig.ini
```

## Versions

| Version  | Url                                            |
| -------- | ---------------------------------------------- |
| CI Build | https://build.fhir.org/ig/CARA-ch/ch-emed-epr/ |
| ?        | ?                                              |

## CI Build

On commit on the master branch, a workflow ensures [SUSHI](https://github.com/FHIR/sushi) can run without errors on the project,
and GitHub triggers the HTTP endpoint of the [FHIR autobuild server](https://github.com/FHIR/auto-ig-builder) with the details of the project.
The build status is posted in [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build),
the [build logs](http://build.fhir.org/ig/CARA-ch/ch-emed-epr/branches/master/build.log) are also available if needed.
