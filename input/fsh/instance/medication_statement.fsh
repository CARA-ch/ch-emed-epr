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
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2024-01-05"
* dosage[baseEntry].timing.repeat.when[+] = #MORN
* dosage[baseEntry].timing.repeat.when[+] = #NOON
* dosage[baseEntry].timing.repeat.when[+] = #EVE
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 $sct#732936001 "comprimé"

Instance: MedicationStatementParacetamolAxapharmPmlc
InstanceOf: CHEMEDMedicationStatementCard
Title: "MedicationStatement: Paracetamol Axapharm (PMLC)"
Description: "The example of a medication statement for a medication card with a single Axapharm paracetamol treatment"
Usage: #example
* contained[+] = MedicationParacetamolAxapharm
* contained[+] = OrganizationHug
* contained[+] = PractitionerCox
* contained[+] = PractitionerRoleCoxAtHug
* contained[=].practitioner = Reference(PractitionerCox)
* contained[=].organization = Reference(OrganizationHug)
* language = #fr-CH
* extension[treatmentPlan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentPlan].extension[id].url = "id"
* extension[treatmentPlan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[id].valueIdentifier.value = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* extension[treatmentPlan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
// #51 TODO add prescription extension??? it is not in the profile but it is at the moment added by the aggregator upon generation
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:64ac7c70-3edb-4b39-84e6-4045e196884f"
* status = #active
* medicationReference = Reference(MedicationParacetamolAxapharm)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* dateAsserted = "2023-10-01T00:00:00+02:00"
* informationSource = Reference(PractitionerRoleCoxAtHug)
* dosage[baseEntry].additionalInstruction = $sct#311504000 "With or after food"
* dosage[baseEntry].additionalInstruction.text = "À prendre pendant les repas"
* dosage[baseEntry].patientInstruction = "À prendre pendant les repas avec de l'eau"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-01"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2024-01-05"
* dosage[baseEntry].timing.repeat.when[+] = #MORN
* dosage[baseEntry].timing.repeat.when[+] = #NOON
* dosage[baseEntry].timing.repeat.when[+] = #EVE
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 $sct#732936001 "comprimé"

Instance: MedicationStatementParacetamolDafalganEffMtp
InstanceOf: CHEMEDEPRMedicationStatement
Title: "MedicationStatement: Paracetamol Dafalgan Effervescent (MTP)"
Description: "The example of a medication statement for a medication treatment plan for Dafalgan effervescent paracetamol"
Usage: #example
* contained[+] = MedicationParacetamolDafalganEff
* language = #fr-CH
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:819febad-dc65-4548-a739-00d1b305c265"
* status = #active
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* dateAsserted = "2023-11-04T00:00:00+02:00"
* informationSource = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* reasonCode.text = "Difficulté à prendre comprimés pelliculés, substitution par comprimés effervescents."
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-04"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2024-02-10"
* dosage[baseEntry].timing.repeat.when[+] = #MORN
* dosage[baseEntry].timing.repeat.when[+] = #EVE
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"

Instance: MedicationStatementParacetamolDafalganEffPmlc
InstanceOf: CHEMEDMedicationStatementCard
Title: "MedicationStatement: Paracetamol Dafalgan Effervescent (PMLC)"
Description: "The example of a medication statement for a medication card with a single Dafalgan effervescent paracetamol treatment."
Usage: #example
* contained[+] = MedicationParacetamolDafalganEff
* contained[+] = OrganizationHug
* contained[+] = PractitionerCox
* contained[+] = PractitionerRoleCoxAtHug
* contained[=].practitioner = Reference(PractitionerCox)
* contained[=].organization = Reference(OrganizationHug)
* language = #fr-CH
* extension[treatmentPlan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentPlan].extension[id].url = "id"
* extension[treatmentPlan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[id].valueIdentifier.value = "urn:uuid:819febad-dc65-4548-a739-00d1b305c265"
* extension[treatmentPlan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:7062399b-61f2-4fb1-b6ba-415c7b6939bc"
// #51 TODO add prescription extension??? it is not in the profile but it is at the moment added by the aggregator upon generation
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a98cc3c1-c079-471c-b053-93b01b70f8c4"
* status = #active
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* dateAsserted = "2023-11-04T12:00:00+02:00"
* informationSource = Reference(PractitionerRoleCoxAtHug)
* reasonCode.text = "Difficulté à prendre comprimés pelliculés, substitution par comprimés effervescents."
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-04"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2024-02-10"
* dosage[baseEntry].timing.repeat.when[+] = #MORN
* dosage[baseEntry].timing.repeat.when[+] = #EVE
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"
