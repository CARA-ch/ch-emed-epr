The **Medication Dispense document** describes the direct dispensation of ONE drug to a patient or legitimized third party with regard to a later application of the product by a qualified health professional. Please see [its description in the CH EMED IG](http://fhir.ch/ig/ch-emed/medication-dispense-document.html).

A dispense (DIS) is an entry that describes an act of dispensing one or more medications to a patient.
It is usually done by a pharmacist and may occasionally be done by another healthcare professional.
They can be for a prescribed treatment or at the patient's request (over-the-counter, OTC).
A dispense entry has no status, it is always considered `active`.
Only PADV COMMENTs can apply to it.
It is useful to pharmacists to determine if a prescription may still be dispensed.

### Profiles

* [Document DIS](StructureDefinition-ch-emed-epr-document-medicationdispense.html)
* [Composition DIS](StructureDefinition-ch-emed-epr-composition-medicationdispense.html)
* [MedicationDispense (DIS)](StructureDefinition-ch-emed-epr-medicationdispense.html)
* [Medication (DIS)](StructureDefinition-ch-emed-epr-medication-medicationdispense.html)

### Example instances

