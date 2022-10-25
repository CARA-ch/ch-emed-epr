Profile: CHEMEDEPRCompositionMedicationList
Parent: CHEMEDCompositionMedicationList
Id: ch-emed-epr-composition-medicationlist
Title: "CH EMED EPR Composition PML"
Description: "Definition of the composition for the medication list document"

* insert CompositionRuleSet

// Upstream
* type.coding                       = $sct#721912009 "Medication summary document (record artifact)"
* category.coding                   = $sct#422735006 "Summary clinical document (record artifact)"
* section[list].extension[sectionId] 0..0 // Not useful anymore
* section[list].code.coding         = $lnc#56445-0 "Medication summary"

// Restrictions
* author                            only Reference(Device)
// TODO prevent other sections (keep only slices)?
* section[list].code.coding         1..1
// TODO section[card].author only Reference()
* section[list].author              1..1 // TODO
* section[list].entry[medicationTreatmentPlan]  only Reference(CHEMEDEPRMedicationStatementTreatmentPlan)
* section[list].entry[medicationPrescription]   only Reference(CHEMEDEPRMedicationRequest)
* section[list].entry[medicationDispense]       only Reference(CHEMEDEPRMedicationDispense)
* section[list].entry[pharmaceuticalAdvice]     only Reference(CHEMEDEPRObservation)

// Disable unused parts
