Instance: MedicationRequestTriatecPre
InstanceOf: CHEMEDEPRMedicationRequest
Title: "MedicationRequest: Triatec (PRE)"
Description: "Example of a medication request in a PRE document."
Usage: #example
* contained[0] = MedicationTriatec
* medicationReference = Reference(MedicationTriatec)
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cc74c310-3e16-45ff-b03d-4e0787e552d3"
* status = #active
* intent = #order
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* authoredOn = "2023-04-11"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].patientInstruction = "À prendre avec de l'eau"
* dosageInstruction[baseEntry].timing.repeat.when = #NOON
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseRange.low = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[baseEntry].doseAndRate.doseRange.high = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-04-11"

Instance: MedicationRequestParacetamolAxapharmPre
InstanceOf: CHEMEDEPRMedicationRequest
Title: "MedicationRequest: Paracetamol Axapharm 1g (PRE)"
Description: "Example of a medication request in a PRE document for paracetamol Axapharm tablet 1g."
Usage: #example
* contained[0] = MedicationParacetamolAxapharm
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac8ad5cd-aa46-49d6-a5ec-fbc48a9287b4"
* status = #active
* intent = #order
* medicationReference = Reference(MedicationParacetamolAxapharm)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* authoredOn = "2023-10-01T00:00:00+02:00"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].additionalInstruction = $sct#311504000 "With or after food"
* dosageInstruction[baseEntry].additionalInstruction.text = "À prendre pendant les repas"
* dosageInstruction[baseEntry].patientInstruction = "À prendre pendant les repas avec de l'eau"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-01"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.end = "2023-10-05"
* dosageInstruction[baseEntry].timing.repeat.when[+] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #NOON
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 1 $sct#732936001 "comprimé"

Instance: MedicationRequestDafalganEffPre
InstanceOf: CHEMEDEPRMedicationRequest
Title: "MedicationRequest: Dafalgan effervescent 500mg (PRE)"
Description: "Example of a medication request in a PRE document for paracetamol Dafalgan effervescent tablets 500mg."
Usage: #example
* contained[0] = MedicationParacetamolDafalganEff
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b1a6484b-d984-4aa0-adee-8f426b50b991"
* status = #active
* intent = #order
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* authoredOn = "2023-10-04T00:00:00+02:00"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].additionalInstruction = $sct#311504000 "With or after food"
* dosageInstruction[baseEntry].additionalInstruction.text = "À prendre pendant les repas"
* dosageInstruction[baseEntry].patientInstruction = "À prendre pendant les repas"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-01"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.end = "2023-10-10"
* dosageInstruction[baseEntry].timing.repeat.when[+] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"
* note.text = "Difficulté à perndre le comprimé pelliculé, substitution par un comprimé effervescent."
