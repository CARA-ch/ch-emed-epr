Profile: CHEMEDEPRPractitionerRole
Parent: CHEMEDPractitionerRole
Id: ch-emed-epr-practitionerrole
Title: "PractitionerRole"
Description: "Definition of the practitioner role for the eMedication context"

// Restrictions
* code                              0..1
* code                              from http://fhir.ch/ig/ch-epr-term/ValueSet/HCProfessional.hcProfession (required)
* practitioner                      only Reference(CHEMEDEPRPractitioner)


// Disable unused parts
* meta                              insert NoMetaExceptProfile
* implicitRules                     0..0
* active                            0..0
* period                            0..0
* location                          0..0
* telecom                           0..0
* availableTime                     0..0
* notAvailable                      0..0
* availabilityExceptions            0..0
* endpoint                          0..0
* specialty                         0..0 // TODO: we may want this
* extension                         0..0
* modifierExtension                 0..0
* identifier                        0..0
* healthcareService                 0..0
* contained                         0..0

// TODO why is CHEMEDEPRPractitioner shown as Practitioner?
