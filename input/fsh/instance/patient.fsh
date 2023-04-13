Instance: PatientDupont
InstanceOf: CHEMEDEPRPatient
Title: "Patient: Dupont"
Description: "A simple example of a patient"
Usage: #example
* name[+].family = "Dupont"
* name[=].given = "Jeanne"
* birthDate = "1972-08-07"
* gender = #female
* identifier[LocalPid].type = $v2-0203#MR
* identifier[LocalPid].system = "urn:oid:2.999.1"
* identifier[LocalPid].value = "11111111"
* address.line = "Wiesenstr. 12"
* address.city = "Zürich"
* address.postalCode = "8003"
* address.country = "CH"
