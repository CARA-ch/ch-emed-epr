Profile: CHEMEDEPRMedicationStatementTreatmentPlan
Parent: CHEMEDMedicationStatementTreatmentPlan
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "CH EMED EPR MedicationStatement (MTP)"
Description: "Definition of the medication statement for the Medication Treatment Plan document"

* insert MedicationStatementRuleSet

// Restrictions
* extension[substitution].valueCodeableConcept.coding from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1

// Disable the unused parts
* extension[substitution].valueCodeableConcept insert SimpleCodeableConcept
* extension[substitution].id        0..0
