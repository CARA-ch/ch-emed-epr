Profile: CHEMEDEPRMedicationDispense
Parent: CHEMEDMedicationDispense
Id: ch-emed-epr-medicationdispense
Title: "CH EMED EPR MedicationDispense"
Description: "Definition of the medication dispense"

// Upstream
// TODO authorizingPrescription and extension[prescription] are doing the same thing

// Restrictions
* extension[treatmentPlan]          1..1
* medicationReference               only Reference(CHEMEDEPRMedicationMedicationDispense)
* authorizingPrescription           0..1
* whenHandedOver                    1..1

// Disable unused parts
* meta                              0..0
* implicitRules                     0..0
* partOf                            0..0
* statusReason[x]                   0..0
* category                          0..0
* context                           0..0
* supportingInformation             0..0
* location                          0..0
* type                              0..0 // TODO ??
* daysSupply                        0..0
* whenPrepared                      0..0
* destination                       0..0
* receiver                          0..0 // It's the subject
* substitution.responsibleParty     0..0 // It's the performer
* extension[pharmaceuticalAdvice]   0..0
* extension[prescription]           0..0 // Use authorizingPrescription?
