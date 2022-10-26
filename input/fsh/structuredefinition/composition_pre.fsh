Profile: CHEMEDEPRCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: ch-emed-epr-composition-medicationprescription
Title: "CH EMED EPR Composition PRE"
Description: "Definition of the composition for the medication prescription document"

* insert CompositionRuleSet
* insert CompositionWithAnnotationRuleSet

// Upstream
* category.coding.code              = #440545006
* category.coding.system            = $sct
* category.coding.display           = "Prescription record (record artifact)"
* section[prescription].extension[sectionId] 0..0 // Not useful anymore

// Restrictions
// TODO prevent other sections (keep only slices)?
* section[prescription].code.coding 1..1
* section[prescription].entry       only Reference(CHEMEDEPRMedicationRequest)
* author                            only Reference(CHEMEDEPRPractitionerRole or CHCorePatientEPR or RelatedPerson)

// Disable unused parts
