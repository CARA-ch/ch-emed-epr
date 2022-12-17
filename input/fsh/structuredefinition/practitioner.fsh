Profile: CHEMEDEPRPractitioner
Parent: CHEMEDPractitioner
Id: ch-emed-epr-practitioner
Title: "Practitioner"
Description: "Definition of the practitioner for the eMedication context"

* insert domain-resource-ruleset

* name 1..1
* address 1..1
* insert no-support(active)
* insert no-support(birthDate)
* insert no-support(photo)
* insert no-support(qualification)
* insert no-support(communication)
* insert no-support(contained)
* insert no-support(extension)
* identifier insert identifier-ruleset
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(qualification.issuer)

// TODO ZSR is mandatory on paper prescription
// TODO block othe
