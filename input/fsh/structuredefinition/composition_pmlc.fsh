Profile: CHEMEDEPRCompositionMedicationCard
Parent: CHEMEDCompositionMedicationCard
Id: ch-emed-epr-composition-medicationcard
Title: "CH EMED EPR Composition PMLC"
Description: "Definition of the composition for the medication card document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

* section[card].extension[sectionId] 0..0 // Not useful anymore
* section[card].code.coding = $lnc#56445-0 "Medication summary" // TODO wrong code upstream
* author only Reference(CHEMEDEPRDevice)
// TODO prevent other sections (keep only slices)?
// TODO section[card].author only Reference()
* section[card].author 1..1 // TODO

* author ^definition = "...Medication cards are automatically created by software, their author is a device."
