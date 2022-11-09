Profile: CHEMEDEPRCompositionPharmaceuticalAdvice
Parent: CHEMEDCompositionPharmaceuticalAdvice
Id: ch-emed-epr-composition-pharmaceuticaladvice
Title: "CH EMED EPR Composition PADV"
Description: "Definition of the composition for the pharmaceutical advice document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

* section[pharmaceuticalAdvice].extension[sectionId] 0..0 // Not useful anymore
* section[pharmaceuticalAdvice].code.coding 1..1
* section[pharmaceuticalAdvice].entry only Reference(CHEMEDEPRObservation)
* author only Reference(CHEMEDEPRPractitionerRole or CHCorePatientEPR)
