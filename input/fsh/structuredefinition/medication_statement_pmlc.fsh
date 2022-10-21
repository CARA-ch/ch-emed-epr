Profile: CHEMEDEPRMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: ch-emed-epr-medicationstatement-card
Title: "MedicationStatement (PMLC)"
Description: "Definition of the medication statement for the Medication Card document"

// * status 0..0 SPEC This should be forbidden
* medicationReference               only Reference(CHEMEDEPRMedication)
// * effective ??
// * dosage[nonstructured] only ?
// * dosage[structurednormal] only ?
// * dosage[structuredsplit] only ?
* reasonCode                        insert ReasonCode

// Disable the unused parts
* meta                              0..0
* implicitRules                     0..0
* basedOn                           0..0
* partOf                            0..0
* statusReason                      0..0 // TODO we may want this
* category                          0..0 // TODO we may want this
* context                           0..0
* dateAsserted                      0..0
* derivedFrom                       0..0
* extension[authorDocument]         0..0

// Documentation
