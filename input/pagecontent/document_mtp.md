The **Medication Treatment Plan document** describes ONE medication of a patient, a medication that has been, is or will be taken by the patient. Please see [its description in the CH-EMED IG](http://fhir.ch/ig/ch-emed/medication-treatment-plan-document.html).

## Profiles

* [Document MTP](StructureDefinition-ch-emed-epr-document-medicationtreatmentplan.html)
* [Composition MTP](StructureDefinition-ch-emed-epr-composition-medicationtreatmentplan.html)
* [MedicationStatement (MTP)](StructureDefinition-ch-emed-epr-medicationstatement-treatmentplan.html)
* [Medication](StructureDefinition-ch-emed-epr-medication.html)

## Example instances

## Specifications

### States

A treatment may be in different states: active, suspended, cancelled and refused.

Note: if the treatment is **active**, is does not mean the patient should take the medication, it means the patient should follow the dosage instructions, which may set a start or end date that specify the medication is not to be taken yet/anymore.