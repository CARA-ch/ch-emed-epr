Instance: MedicationDispenseTriatecDis
InstanceOf: CHEMEDEPRMedicationDispense
Title: "MedicationDispense: Triatec (DIS)"
Description: "Example of a medication dispense in a DIS document."
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
* identifier.value = "urn:uuid:73bc6454-5514-4a6d-a24c-7d9546f873a9"
* status = #completed
* performer.actor = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* whenHandedOver = "2023-04-15"
* quantity = 1 http://snomed.info/sct#1681000175101 "Package"
* dosageInstruction[baseEntry].patientInstruction = "À prendre avec de l'eau"
* dosageInstruction[baseEntry].timing.repeat.when = #NOON
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseRange.low = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[baseEntry].doseAndRate.doseRange.high = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-04-11"
