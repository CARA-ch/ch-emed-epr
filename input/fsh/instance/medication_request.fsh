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