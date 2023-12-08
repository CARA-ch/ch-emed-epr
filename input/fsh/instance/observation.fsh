
/*
Instance: ObservationTriatecPadv
InstanceOf: CHEMEDEPRObservation
Title: "Observation: Triatec (PADV)"
Description: "The example of an observation for a change in a PADV document"
Usage: #example
* status = #final
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* extension[medicationStatementChanged].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed"
* extension[medicationStatementChanged].valueReference.reference = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:3dcadc51-9509-48f0-b8c2-4ebf7e03f330"
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* performer = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* issued = "2023-04-11T12:00:00+02:00"
* note.text = "Changed intake to range 0.5-1 tablets after discussion with patient."

Instance: MedicationStatementTriatecPadv
InstanceOf: CHEMEDEPRChangedMedicationStatement
Title: "Changed Medication Statement: Triatec (PADV)"
Description: "The example of an changed medication statement for a PADV document"
Usage: #inline
* contained[0] = MedicationTriatec
* medicationReference = Reference(MedicationTriatec)
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* partOf = Reference(ObservationTriatecPadv)
* status = #active
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* dateAsserted = "2023-04-11"
* informationSource = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosage[baseEntry].patientInstruction = "À prendre avec de l'eau"
* dosage[baseEntry].timing.repeat.when = #NOON
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseRange.low = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosage[baseEntry].doseAndRate.doseRange.high = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2023-04-11"
*/