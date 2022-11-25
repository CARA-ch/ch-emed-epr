Profile: CHEMEDEPRMedicationStatement
Parent: CHEMEDMedicationStatement
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "CH EMED EPR MedicationStatement (MTP)"
Description: "Definition of the medication statement for the Medication Treatment Plan document"

* insert medication-statement-ruleset

* extension[substitution].valueCodeableConcept from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert codeableconcept-ruleset
* extension[substitution].id D
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."

// TODO status is only active

// TODO TEST flags
* informationSource TU
* effectivePeriod N
* subject D
