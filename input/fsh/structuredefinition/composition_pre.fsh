Profile: CHEMEDEPRCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: ch-emed-epr-composition-medicationprescription
Title: "Composition PRE"
Description: "Definition of the composition for the medication prescription document"

* insert CompositionRuleSet
* insert CompositionWithAnnotationRuleSet

// Upstream
* type.coding                       = $sct#761938008 "Medicinal prescription record (record artifact)"
* category.coding                   = $sct#440545006 "Prescription record (record artifact)"
* section[prescription].extension[sectionId] 0..0 // Not useful anymore

// Restrictions
// TODO prevent other sections (keep only slices)?
* section[prescription].code.coding 1..1
* section[prescription].entry       only Reference(CHEMEDEPRMedicationRequest)

// Disable unused parts
