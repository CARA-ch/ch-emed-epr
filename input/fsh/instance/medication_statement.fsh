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
* dosage[baseEntry].text = "Un demi comprimé à avaler et prendre avec de l'eau tous les midis dès le 2023-04-11."
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
* dosage[baseEntry].text = "Un comprimé à avaler pendant les repas avec de l'eau le matin, le midi et le soir du 2023-10-01 au 2024-01-05."

Instance: MedicationStatementParacetamolAxapharmPmlc
InstanceOf: CHEMEDEPRMedicationStatementCard
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
* extension[lastConsideredDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-last-considered-document"
* extension[lastConsideredDocument].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[lastConsideredDocument].valueIdentifier.value = "urn:uuid:e0c06f3c-1b63-468a-9c46-e800d39b6a15"
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
* dosage[baseEntry].text = "Un comprimé à avaler pendant les repas avec de l'eau le matin, le midi et le soir du 2023-10-01 au 2024-01-05."

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
* dosage[baseEntry].text = "2 comprimés à avaler le matin et 2 comprimés le soir, du 2023-10-04 au 2024-02-10."

Instance: MedicationStatementParacetamolDafalganEffPmlc
InstanceOf: CHEMEDEPRMedicationStatementCard
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
* extension[lastConsideredDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-last-considered-document"
* extension[lastConsideredDocument].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[lastConsideredDocument].valueIdentifier.value = "urn:uuid:31b60b8f-e15d-42ce-9558-57fde055da7a"
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
* dosage[baseEntry].text = "2 comprimés à avaler le matin et 2 comprimés le soir, du 2023-10-04 au 2024-02-10."

Instance: MedicationStatementDafalganEffSplitDose
// this entry is not part of any document / use case
InstanceOf: CHEMEDEPRMedicationStatement
Title: "MedicationStatement: Paracetamol Dafalgan Effervescent (MTP) with split dose"
Description: "The example for a medication statement with split dose."
Usage: #example
* contained[+] = MedicationParacetamolDafalganEff
* contained[+] = OrganizationHug
* contained[+] = PractitionerCox
* contained[+] = PractitionerRoleCoxAtHug
* contained[=].practitioner = Reference(PractitionerCox)
* contained[=].organization = Reference(OrganizationHug)
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0564998f-b3b2-4e70-8daf-52d7c5d50eb3"
* status = #active
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* dateAsserted = "2023-11-05T12:00:00+02:00"
* informationSource = Reference(PractitionerRoleCoxAtHug)
* reasonCode.text = "Dafalgan pour des douleurs regulières."
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2023-11-05"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2024-02-10"
* dosage[baseEntry].timing.repeat.when[+] = #MORN
* dosage[baseEntry].route = $edqm#20053000 "Oral use"
* dosage[baseEntry].route.text = "À avaler"
* dosage[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"
* dosage[baseEntry].text = "2 comprimés à avaler le matin et 1 comprimé à avaler le soir."
* dosage[baseEntry].sequence = 1
* dosage[additionalEntry].sequence = 2
* dosage[additionalEntry].timing.repeat.when[+] = #EVE
* dosage[additionalEntry].doseAndRate.doseQuantity = 1 $sct#732936001 "comprimé"
