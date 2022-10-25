Profile: CHEMEDEPRCompositionMedicationDispense
Parent: CHEMEDCompositionMedicationDispense
Id: ch-emed-epr-composition-medicationdispense
Title: "CH EMED EPR Composition DIS"
Description: "Definition of the composition for the medication dispense document"

* insert CompositionRuleSet
* insert CompositionWithAnnotationRuleSet

// Upstream
* type.coding                       = $sct#419891008 "Record artifact (record artifact)"
* category.coding                   = $sct#440545006 "Prescription record (record artifact)"
* section[dispense].extension[sectionId] 0..0 // Not useful anymore

// Restrictions
// TODO prevent other sections (keep only slices)?
* section[dispense].code.coding     1..1
* section[dispense].entry           only Reference(CHEMEDEPRMedicationDispense)

// Disable unused parts
