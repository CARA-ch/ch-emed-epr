Profile: CHEMEDEPRMedicationStatementTreatmentPlan
Parent: CHEMEDMedicationStatementTreatmentPlan
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "CH EMED EPR MedicationStatement (MTP)"
Description: "Definition of the medication statement for the Medication Treatment Plan document"

* insert MedicationStatementRuleSet

* extension[substitution].valueCodeableConcept.coding from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert SimpleCodeableConcept
* extension[substitution].id        0..0
* extension[substitution]           ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."

