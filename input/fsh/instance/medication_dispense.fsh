Instance: MedicationDispenseTriatecDis
InstanceOf: CHEMEDEPRMedicationDispense
Title: "MedicationDispense: Triatec (DIS)"
Description: "Example of a medication dispense in a DIS document."
Usage: #example
* contained[0] = MedicationTriatec
* medicationReference = Reference(MedicationTriatec)
* extension[prescription].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription"
* extension[prescription].extension[id].url = "id"
* extension[prescription].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[prescription].extension[id].valueIdentifier.value = "urn:uuid:cc74c310-3e16-45ff-b03d-4e0787e552d3"
* extension[prescription].extension[externalDocumentId].url = "externalDocumentId"
* extension[prescription].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[prescription].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:6f9d43df-fdc2-4ec2-a6d4-88b27dadb291"
* extension[treatmentPlan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentPlan].extension[id].url = "id"
* extension[treatmentPlan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[id].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension[treatmentPlan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
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
* dosageInstruction[baseEntry].text = "Un demi comprimé ou un comprimé entier à avaler et prendre avec de l'eau tous les midis dès le 2023-04-11."

Instance: MedicationDispenseTriatecPml
InstanceOf: CHEMEDEPRMedicationDispenseList
Title: "MedicationDispense: Triatec (PML)"
Description: "Example of a medication dispense in a PML document."
Usage: #example
* contained[0] = MedicationTriatec
* medicationReference = Reference(MedicationTriatec)
* extension[treatmentPlan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentPlan].extension[id].url = "id"
* extension[treatmentPlan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[id].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension[treatmentPlan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* extension[parentDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-dispense"
* extension[parentDocument].extension[id].url = "id"
* extension[parentDocument].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[id].valueIdentifier.value = "urn:uuid:73bc6454-5514-4a6d-a24c-7d9546f873a9"
* extension[parentDocument].extension[externalDocumentId].url = "externalDocumentId"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:49ed45e9-f7b6-4854-a234-56bf744e9026"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:29b59609-a622-42eb-ac6c-dc2ddb3805a6"
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
* dosageInstruction[baseEntry].text = "Un demi comprimé ou un comprimé entier à avaler et prendre avec de l'eau tous les midis dès le 2023-04-11."
