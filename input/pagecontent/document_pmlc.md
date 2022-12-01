The **Medication Card document** describes the current medication of a patient, medications (MORE) that have been, is or will be taken by the patient. Please see [its description in the CH-EMED IG](http://fhir.ch/ig/ch-emed/medication-card-document.html).

It can only be generated from the eMedication service and retrieved, not published there.

## Profiles

* [CH EMED EPR Document PMLC](StructureDefinition-ch-emed-epr-document-medicationcard.html)
* [CH EMED EPR Composition PMLC](StructureDefinition-ch-emed-epr-composition-medicationcard.html)
* [CH EMED EPR MedicationStatement (PMLC)](StructureDefinition-ch-emed-epr-medicationstatement-card.html)
* [CH EMED EPR Medication](StructureDefinition-ch-emed-epr-medication.html)

## Example instances

## Specifications

This document contains aggregated entries. For more information about aggregation, please read [the dedicated page](aggregation.html).

### Authors

1. Last intervening author: represents the author of the last entry (of any kind) in the treatment.
2. Last medical author: represents the author of the last section (of type _MTP_, _PRE_, or any type of _PADV_ except _COMMENT_ that apply to an _MTP_ or _PRE_) in this treatment.

### Generation rules

<!-- TODO draft elements that are references to other resources -->
