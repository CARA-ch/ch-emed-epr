Profile: CHEMEDEPRCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: ch-emed-epr-composition-medicationprescription
Title: "CH EMED EPR Composition PRE"
Description: "Definition of the composition for the medication prescription document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

// Upstream
* section[prescription].extension[sectionId] 0..0 // Not useful anymore

// Restrictions
// TODO prevent other sections (keep only slices)?
* section[prescription].code.coding 1..1
* section[prescription].entry only Reference(CHEMEDEPRMedicationRequest)
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient)

// Disable unused parts
