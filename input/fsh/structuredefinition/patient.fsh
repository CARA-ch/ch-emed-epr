Profile: CHEMEDEPRPatient
Parent: CHCorePatientEPR
Id: ch-emed-epr-patient
Title: "CH EMED EPR Patient"
Description: "Definition of the patient for the eMedication context"

* insert domain-resource-ruleset

* identifier insert identifier-ruleset
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(contact.organization)
* insert problematic-reference(generalPractitioner)
* insert problematic-reference(managingOrganization)
* insert problematic-reference(link)
