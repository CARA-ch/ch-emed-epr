Instance: MedicationStatementTriatecPadv
InstanceOf: CHEMEDEPRChangedMedicationStatement
Title: "Changed Medication Statement: Triatec (PADV)"
Description: "The example of an changed medication statement for a PADV document"
Usage: #example
* contained[0] = MedicationTriatec
* medicationReference = Reference(MedicationTriatec)
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* partOf = Reference(urn:uuid:3dcadc51-9509-48f0-b8c2-4ebf7e03f330)
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
