Profile: CHEMEDEPRMedicationStatementTreatmentPlan
Parent: CHEMEDMedicationStatementTreatmentPlan
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "MedicationStatement (MTP)"
Description: "Definition of the medication statement for the Medication Treatment Plan document"

// * status 0..0 SPEC This should be forbidden
* extension[substitution].valueCodeableConcept.coding from substance-admin-substitution-code (required)
* medicationReference only Reference(CHEMEDEPRMedication)
// * effective ??
// * dosage[nonstructured] only ?
// * dosage[structurednormal] only ?
// * dosage[structuredsplit] only ?

// Disable the unused parts
* meta              0..0
* implicitRules     0..0
* basedOn           0..0
* partOf            0..0
* statusReason      0..0 // TODO we may want this
* category          0..0 // TODO we may want this
* context           0..0
* dateAsserted      0..0
* derivedFrom       0..0
* reasonCode        0..0 // TODO we may want this
* reasonReference   0..0