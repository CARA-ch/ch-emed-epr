Profile: CHEMEDEPRMedicationStatementList
Parent: CHEMEDMedicationStatementList
Id: ch-emed-epr-medicationstatement-list
Title: "CH EMED EPR MedicationStatement (PML)"
Description: "Definition of the medication statement for the medication list document"

* insert medication-statement-ruleset

* extension[substitution].valueCodeableConcept.coding from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert codeableconcept-ruleset
* extension[substitution].id D
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."
