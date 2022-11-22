Profile: CHEMEDEPRCompositionMedicationList
Parent: CHEMEDCompositionMedicationList
Id: ch-emed-epr-composition-medicationlist
Title: "CH EMED EPR Composition PML"
Description: "Definition of the composition for the medication list document"

* insert composition-ruleset

// Upstream
* section[list].extension[sectionId] 0..0 // Not useful anymore
* section[list].code.coding = $lnc#56445-0 "Medication summary"

// Restrictions
* author only Reference(CHEMEDEPRDevice)
// TODO prevent other sections (keep only slices)?
* section[list].code.coding 1..1
// TODO section[card].author only Reference()
* section[list].author 1..1 // TODO
* section[list]
  * entry[medicationStatement] only Reference(CHEMEDEPRMedicationStatementList)
  * entry[medicationRequest] only Reference(CHEMEDEPRMedicationRequestList)
  * entry[medicationDispense] only Reference(CHEMEDEPRMedicationDispenseList)
  * entry[observation] only Reference(CHEMEDEPRObservationList)

// Disable unused parts
