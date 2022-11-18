Profile: CHEMEDEPRPractitionerRole
Parent: CHEMEDPractitionerRole
Id: ch-emed-epr-practitionerrole
Title: "CH EMED EPR PractitionerRole"
Description: "Definition of the practitioner role for the eMedication context"

* insert domain-resource-ruleset

* code 0..1
* code from http://fhir.ch/ig/ch-epr-term/ValueSet/HCProfessional.hcProfession (required)
* practitioner only Reference(CHEMEDEPRPractitioner)
* organization only Reference(CHEMEDEPROrganization)
* active D
* period D
* location D
* telecom D
* availableTime D
* notAvailable D
* availabilityExceptions D
* endpoint D
* specialty D // TODO: we may want this
* extension D
* identifier D
* healthcareService D
* contained D
* location ..0
* location ^comment "Problematic for PML creation"
* healthcareService ..0
* healthcareService ^comment "Problematic for PML creation"
* endpoint ..0
* endpoint ^comment "Problematic for PML creation"

// TODO code: not exactly the CDA participationFunction
