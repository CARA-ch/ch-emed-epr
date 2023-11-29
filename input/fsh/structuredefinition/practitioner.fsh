Profile: CHEMEDEPRPractitioner
Parent: CHEMEDPractitioner
Id: ch-emed-epr-practitioner
Title: "CH EMED EPR Practitioner"
Description: "Definition of the practitioner for the eMedication context"
* insert domain-resource-ruleset
* insert no-support(active)
* insert no-support(birthDate)
* insert no-support(photo)
* insert no-support(qualification)
* insert no-support(communication)
* insert no-support(contained)
* insert no-support(extension)
* identifier insert identifier-ruleset
* identifier[GLN] insert enforce-valid-gln
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(qualification.issuer)
// TODO ZSR is mandatory on paper prescription
