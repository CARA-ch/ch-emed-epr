Profile: CHEMEDEPRCompositionMedicationTreatmentPlan
Parent: CHEMEDCompositionMedicationTreatmentPlan
Id: ch-emed-epr-composition-medicationtreatmentplan
Title: "Composition MTP"
Description: "Definition of the composition for the medication treatment plan document"

* insert CompositionRuleSet
* insert CompositionWithAnnotationRuleSet

// Upstream
/** type.coding.code                  = #419891008
* type.coding.system                = $sct
* type.coding.display               = "Record artifact (record artifact)"*/
//* type.coding                       = $sct#419891008 "Record artifact (record artifact)"
* category.coding.code              = #440545006
* category.coding.system            = $sct
* category.coding.display           = "Prescription record (record artifact)"
* section[treatmentPlan].extension[sectionId] 0..0 // Not useful anymore

// Restrictions
// TODO prevent other sections (keep only slices)?
* section[treatmentPlan].code.coding 1..1
* section[treatmentPlan].entry      only Reference(CHEMEDEPRMedicationStatementTreatmentPlan)
* section[treatmentPlan].code       insert SimpleCodeableConcept
* section[treatmentPlan].code.coding insert SimpleCoding
