Profile: CHEMEDEPRPractitionerRole
Parent: CHEMEDPractitionerRole
Id: ch-emed-epr-practitionerrole
Title: "PractitionerRole"
Description: "Definition of the practitioner role for the eMedication context"

* insert domain-resource-ruleset

* code 0..1
* code from http://fhir.ch/ig/ch-epr-term/ValueSet/HCProfessional.hcProfession (required)
* practitioner only Reference(CHEMEDEPRPractitioner)
* organization only Reference(CHEMEDEPROrganization)
* insert no-support(active)
* insert no-support(period)
* insert no-support(location)
* insert no-support(telecom)
* insert no-support(availableTime)
* insert no-support(notAvailable)
* insert no-support(availabilityExceptions)
* insert no-support(endpoint)
* insert no-support(specialty) // TODO: we may want this
* insert no-support(extension)
* insert no-support(identifier)
* insert no-support(healthcareService)
* insert no-support(contained)
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(location)
* insert problematic-reference(healthcareService)
* insert problematic-reference(endpoint)

// TODO code: not exactly the CDA participationFunction
