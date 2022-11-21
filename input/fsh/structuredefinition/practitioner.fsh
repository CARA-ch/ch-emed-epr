Profile: CHEMEDEPRPractitioner
Parent: CHEMEDPractitioner
Id: ch-emed-epr-practitioner
Title: "CH EMED EPR Practitioner"
Description: "Definition of the practitioner for the eMedication context"

* insert domain-resource-ruleset

* name 1..1
* address 1..1
* active D
* birthDate D
* photo D
* qualification D
* communication D
* contained D
* extension D
* identifier insert identifier-ruleset
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(qualification.issuer)

// TODO ZSR is mandatory on paper prescription
// TODO block othe
