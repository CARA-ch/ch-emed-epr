Profile: CHEMEDEPRCompositionMedicationTreatmentPlan
Parent: CHEMEDCompositionMedicationTreatmentPlan
Id: ch-emed-epr-composition-medicationtreatmentplan
Title: "CH EMED EPR Composition MTP"
Description: "Definition of the composition for the medication treatment plan document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

* section[treatmentPlan].extension[sectionId] 0..0 // Not useful anymore
* subject only Reference(CHCorePatientEPR)
* section[treatmentPlan].code.coding 1..1
* section[treatmentPlan].entry only Reference(CHEMEDEPRMedicationStatementTreatmentPlan)
* section[treatmentPlan].code insert codeableconcept-ruleset
* section[treatmentPlan].code.coding insert coding-ruleset
* author only Reference(CHEMEDEPRPractitionerRole or CHCorePatientEPR)
