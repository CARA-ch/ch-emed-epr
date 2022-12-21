The **Medication Card document** describes the current medication of a patient, medications (MORE) that have been, is or will be taken by the patient. Please see [its description in the CH-EMED IG](http://fhir.ch/ig/ch-emed/medication-card-document.html).

It can only be generated from the eMedication service and retrieved, not published there.

## Profiles

* [Document PMLC](StructureDefinition-ch-emed-epr-document-medicationcard.html)
* [Composition PMLC](StructureDefinition-ch-emed-epr-composition-medicationcard.html)
* [MedicationStatement (PMLC)](StructureDefinition-ch-emed-epr-medicationstatement-card.html)
* [Medication](StructureDefinition-ch-emed-epr-medication.html)

## Example instances

## Specifications

This document contains aggregated entries. For more information about aggregation, please read [the dedicated page](aggregation.html).

### Authors

1. Last intervening author: represents the author of the last entry (of any kind) in the treatment.
2. Last medical author: represents the author of the last section (of type _MTP_, _PRE_, or any type of _PADV_ except _COMMENT_ that apply to an _MTP_ or _PRE_) in this treatment.

### Generation rules

Treatments are selected for processing as follows:

1. The MTP status shall be **active**.
2. The MTP dosage end date shall be *null* or in the future.

Treatments are then processed as follows:

1. If there are one or more **active** prescriptions, whose dosage end date is either *null* or in the future, then an item for each of these prescriptions is inserted in the medication card.
2. If there's no such prescription, an item is inserted in the medication card.

*An item is a MedicationStatement in the document and a line in the PDF.*

<!-- TODO draft elements that are references to other resources -->
