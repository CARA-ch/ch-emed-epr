Profile: CHEMEDEPRPractitioner
Parent: CHEMEDPractitioner
Id: ch-emed-epr-practitioner
Title: "CH EMED EPR Practitioner"
Description: "Definition of the practitioner for the eMedication context"

// Restrictions
* name                              1..1
* address                           1..1

// Disable unused parts
* meta                              insert NoMetaExceptProfile
* implicitRules                     0..0
* active                            0..0
* birthDate                         0..0
* photo                             0..0
* qualification                     0..0
* communication                     0..0
* contained                         0..0
* extension                         0..0
* modifierExtension                 0..0
* identifier                        insert SimpleIdentifier

// TODO ZSR is mandatory on paper prescription
// TODO block othe
