Profile: CHEMEDEPRCompositionPharmaceuticalAdvice
Parent: CHEMEDCompositionPharmaceuticalAdvice
Id: ch-emed-epr-composition-pharmaceuticaladvice
Title: "Composition PADV"
Description: "Definition of the composition for the pharmaceutical advice document"

* insert CompositionRuleSet
* insert CompositionWithAnnotationRuleSet

// Upstream
* type.coding                       = $sct#419891008 "Record artifact (record artifact)"
* category.coding                   = $sct#440545006 "Prescription record (record artifact)"
* section[pharmaceuticalAdvice].extension[sectionId] 0..0 // Not useful anymore

// Restrictions
// TODO prevent other sections (keep only slices)?
* section[pharmaceuticalAdvice].code.coding 1..1
* section[pharmaceuticalAdvice].entry only Reference(CHEMEDEPRObservation)

// Disable unused parts
