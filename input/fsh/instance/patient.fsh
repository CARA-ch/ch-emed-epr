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

Instance: PatientCARAPMP004
InstanceOf: CHEMEDEPRPatient
Title: "Patient: Michaël Christopher KARCE"
Description: "Patient CARAPMP004"
Usage: #example
* name[+].family = "Karce"
* name[=].given = "Michaël Christopher"
* birthDate = "1973-12-25"
* gender = #male
* identifier[+].use = #official
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.191.1.0.2.1"
* identifier[=].value = "9b00e81e-1165-4039-9d60-698ef838ae1a"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.196.3.2.1"
* identifier[=].value = "CARAPMP004"
* active = true
