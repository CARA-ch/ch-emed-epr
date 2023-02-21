The **Medication Treatment Plan document** describes ONE medication of a patient, a medication that has been, is or will be taken by the patient.
Please see [its description in the CH-EMED IG](http://fhir.ch/ig/ch-emed/medication-treatment-plan-document.html).

A medication treatment plan (MTP) is an entry that describes the introduction of a medication into the patient's treatment plan.
It contains information about the medication and dosage instructions, and may contain start and end dates.

### Profiles

* [Document MTP](StructureDefinition-ch-emed-epr-document-medicationtreatmentplan.html)
* [Composition MTP](StructureDefinition-ch-emed-epr-composition-medicationtreatmentplan.html)
* [MedicationStatement (MTP)](StructureDefinition-ch-emed-epr-medicationstatement-treatmentplan.html)
* [Medication](StructureDefinition-ch-emed-epr-medication.html)

### Example instances

### Specifications

#### States

A treatment may be in the following status: `active`, `suspended`, `cancelled` or `refused`.
In the state `active`, the
In the states `suspended`, `cancelled` or `refused`, the patient should not be taking the medication.
The state `suspended` is reversible to `active` with the publication of a PADV OK entry.
The state `cancelled` indicates the treatment has been stopped,
the state `refused` indicates a healthcare professional has refused this treatment.
States `cancelled` and `refused` are definitive.


Note: if the treatment is **active**, is does not mean the patient should take the medication,
it means the patient should follow the dosage instructions,
which may set a start or end date that specify the medication is not to be taken yet/anymore.