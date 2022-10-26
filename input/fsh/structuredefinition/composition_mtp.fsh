Profile: CHEMEDEPRCompositionMedicationTreatmentPlan
Parent: CHEMEDCompositionMedicationTreatmentPlan
Id: ch-emed-epr-composition-medicationtreatmentplan
Title: "CH EMED EPR Composition MTP"
Description: "Definition of the composition for the medication treatment plan document"

* insert CompositionRuleSet
* insert CompositionWithAnnotationRuleSet

* section[treatmentPlan].extension[sectionId] 0..0 // Not useful anymore
* subject                           only Reference(CHCorePatientEPR)
// TODO prevent other sections (keep only slices)?
* section[treatmentPlan].code.coding 1..1
* section[treatmentPlan].entry      only Reference(CHEMEDEPRMedicationStatementTreatmentPlan)
* section[treatmentPlan].code       insert SimpleCodeableConcept
* section[treatmentPlan].code.coding insert SimpleCoding
* author                            only Reference(CHEMEDEPRPractitionerRole or CHCorePatientEPR or RelatedPerson)
