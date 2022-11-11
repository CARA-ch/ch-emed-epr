The **Medication Prescription document** describes the content and format of a Prescription document generated during the process in which a health care professional decides that the patient needs medication (ONE or MORE). Please see [its description in the CH-EMED IG](http://fhir.ch/ig/ch-emed/medication-prescription-document.html).

## Profiles

* [CH EMED EPR Document PRE](StructureDefinition-ch-emed-epr-document-medicationprescription.html)
* [CH EMED EPR Composition PRE](StructureDefinition-ch-emed-epr-composition-medicationprescription.html)
* [CH EMED EPR MedicationRequest (PRE)](StructureDefinition-ch-emed-epr-medicationrequest.html)
* [CH EMED EPR Medication](StructureDefinition-ch-emed-epr-medication.html)

## Example instances

## Specifications

### Multiple entries

A prescription document can contain multiple medication requests.

A single document SHALL NOT prescribe multiple times the same treatment (i.e. SHALL NOT target multiple times the same treatment plan entry; the same medication COULD be prescribed multiple times in different treatments).

### Prescription validity period

The prescription validity period (`MedicationRequest.dispenseRequest.validityPeriod.(start|end)`) indicates the period over which the prescription can be dispensed (NOT the period over which the medication is to be taken by the patient).
The start time is mandatory and SHOULD reflect the time the prescription was created.
The end time is optional but SHOULD be set; if it's not set, the prescription will stay as 'ready for validation' until the time is manually set (in a PADV CHANGE) or the prescription is manually cancelled or refused.

The eMedication service doesn't enforce validity period max duration, as set by cantonal laws.
