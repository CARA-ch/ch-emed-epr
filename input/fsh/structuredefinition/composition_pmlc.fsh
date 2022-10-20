Profile: CHEMEDEPRCompositionMedicationCard
Parent: CHEMEDCompositionMedicationCard
Id: ch-emed-epr-composition-medicationcard
Title: "Composition PMLC"
Description: "Definition of the composition for the medication card document"

* insert CompositionRuleSet
* insert CompositionWithAnnotationRuleSet

// Upstream
* type.coding                       = $sct#721912009 "Medication summary document (record artifact)"
* category.coding                   = $sct#422735006 "Summary clinical document (record artifact)"
* section[card].extension[sectionId] 0..0 // Not useful anymore
* section[card].code.coding         = $lnc#56445-0 "Medication summary"

// Restrictions
* author                            only Reference(Device)
// TODO prevent other sections (keep only slices)?
* section[card].code.coding         1..1
// TODO section[card].author only Reference()
* section[card].author              1..1 // TODO

// Disable unused parts
