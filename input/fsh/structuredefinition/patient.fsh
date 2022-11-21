Profile: CHEMEDEPRPatient
Parent: CHCorePatientEPR
Id: ch-emed-epr-patient
Title: "CH EMED EPR Patient"
Description: "Definition of the patient for the eMedication context"

* insert domain-resource-ruleset

* identifier insert identifier-ruleset
* identifier.assigner ..0
* identifier.assigner ^comment = "Problematic for PML creation"
* contact.organization ..0
* contact.organization ^comment = "Problematic for PML creation"
* generalPractitioner ..0
* generalPractitioner ^comment = "Problematic for PML creation"
* managingOrganization ..0
* managingOrganization ^comment = "Problematic for PML creation"
* link.other ..0
* link.other ^comment = "Problematic for PML creation"
