# Date and times

## Document creation time

The entries in a document are considered effective at the document creation time (`Bundle.timestamp`).
The entries must specify also a timestamp of medical authorship that might be different from the document creation time (see [Guidance - Different Authors](https://fhir.ch/ig/ch-emed/different-authors.html)):
- `MedicationStatement.dateAsserted`
- `MedicationRequest.authoredOn`
- `MedicationDispense.whenHandedOver`
- `Observation.issued`
Other entry effective times like `MedicationStatement.effectiveDateTime`, `MedicationDispense.whenPrepared` or `Observation.effectiveDateTime` are ignored.

When the eMedication service receives a document, it checks the document creation time is in the past or present (the document SHALL NOT be created more than a few seconds in the future) and that references documents are older than the provided one (the document SHALL be created on of after the previous related documents in the treatment).
