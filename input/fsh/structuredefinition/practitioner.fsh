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
* identifier.assigner ..0
* identifier.assigner ^comment = "Problematic for PML creation"
* qualification.issuer ..0
* qualification.issuer ^comment = "Problematic for PML creation"

// TODO ZSR is mandatory on paper prescription
// TODO block othe
