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

Instance: MedicationRequestTriatecPml
InstanceOf: CHEMEDEPRMedicationRequestList
Title: "MedicationRequest: Triatec (PML)"
Description: "Example of a medication request in a PML document."
Usage: #example
* contained[0] = MedicationTriatec
* medicationReference = Reference(MedicationTriatec)
* extension[treatmentplan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentplan].extension[id].url = "id"
* extension[treatmentplan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[id].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension[treatmentplan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* extension[parentDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription"
* extension[parentDocument].extension[id].url = "id"
* extension[parentDocument].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[id].valueIdentifier.value = "urn:uuid:cc74c310-3e16-45ff-b03d-4e0787e552d3"
* extension[parentDocument].extension[externalDocumentId].url = "externalDocumentId"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:6f9d43df-fdc2-4ec2-a6d4-88b27dadb291"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d93c875a-d4ed-4fff-8a16-a4e0a94fe2ad"
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
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.end = "2024-01-05"
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
* extension.extension[=].valueIdentifier.value = "urn:uuid:819febad-dc65-4548-a739-00d1b305c265"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:7062399b-61f2-4fb1-b6ba-415c7b6939bc"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b1a6484b-d984-4aa0-adee-8f426b50b991"
* status = #active
* intent = #order
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* authoredOn = "2023-11-04T12:00:00+02:00"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-04"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.end = "2024-02-10"
* dosageInstruction[baseEntry].timing.repeat.when[+] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"
* note.text = "Difficulté à prendre le comprimé pelliculé, substitution par un comprimé effervescent."
