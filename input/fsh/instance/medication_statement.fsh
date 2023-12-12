Instance: MedicationStatementTriatecMtp
InstanceOf: CHEMEDEPRMedicationStatement
Title: "MedicationStatement: Triatec (MTP)"
Description: "The example of a medication statement in a MTP document"
Usage: #example
* contained[0] = MedicationTriatec
* medicationReference = Reference(MedicationTriatec)
* status = #active
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* dosage[baseEntry].patientInstruction = "À prendre avec de l'eau"
* dosage[baseEntry].timing.repeat.when = #NOON
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2023-04-11"
* dateAsserted = "2023-04-11"
* informationSource = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)

Instance: MedicationStatementParacetamolAxapharmMtp
InstanceOf: CHEMEDEPRMedicationStatement
Title: "MedicationStatement: Paracetamol Axapharm (MTP)"
Description: "The example of a medication statement for a medication treatment plan for Axapharm paracetamol"
Usage: #example
* contained[+] = MedicationParacetamolAxapharm
* language = #fr-CH
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* status = #active
* medicationReference = Reference(MedicationParacetamolAxapharm)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* dateAsserted = "2023-10-01T00:00:00+02:00"
* informationSource = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosage[baseEntry].additionalInstruction = $sct#311504000 "With or after food"
* dosage[baseEntry].additionalInstruction.text = "À prendre pendant les repas"
* dosage[baseEntry].patientInstruction = "À prendre pendant les repas avec de l'eau"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-01"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2023-10-05"
* dosage[baseEntry].timing.repeat.when[+] = #MORN
* dosage[baseEntry].timing.repeat.when[+] = #NOON
* dosage[baseEntry].timing.repeat.when[+] = #EVE
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 $sct#732936001 "comprimé"
