Profile: CHEMEDEPRMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: ch-emed-epr-medicationstatement-card
Title: "CH EMED EPR MedicationStatement (PMLC)"
Description: "Definition of the medication statement for the Medication Card document"

* insert medication-statement-ruleset

* extension[treatmentPlan] 1..1
* extension[treatmentPlan] ^short = "Reference to the MTP that introduced this medication in the treatment plan"
//* extension[authorDocument] only Reference(CHEMEDEPRPractitionerRole or CHCorePatientEPR) // TODO fix me
