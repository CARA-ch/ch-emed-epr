Profile: CHEMEDEPRPatient
Parent: CHCorePatientEPR
Id: ch-emed-epr-patient
Title: "CH EMED EPR Patient"
Description: "Definition of the patient for the eMedication context"

* insert domain-resource-ruleset

* identifier insert identifier-ruleset
* identifier[AHVN13] insert enforce-valid-ahvn13
* identifier[EPR-SPID] insert enforce-valid-epr-spid
* identifier[insuranceCardNumber] insert enforce-valid-veka
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(contact.organization)
* insert problematic-reference(generalPractitioner)
* insert problematic-reference(managingOrganization)
* insert problematic-reference(link)
