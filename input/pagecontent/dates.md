# Date and times

## Document creation time

The entries in a document are considered effective at the document creation time (`Bundle.timestamp`).
The entry effective times (`MedicationStatement.effectiveDateTime`, `MedicationRequest.authoredOn`, `MedicationDispense.when(Prepared|HandedOver)`, `Observation.effectiveDateTime`) are ignored.

When the eMedication service receives a document, it checks the creation time is in the past or present (the document SHALL NOT be created more than a few seconds in the future) and that references documents are older than the provided one (the document SHALL be created on of after the previous related documents in the treatment).
