Instance: MedicationRequestChangedDafalganEffPre
InstanceOf: CHEMEDEPRChangedMedicationRequest
Title: "MedicationRequest: Dafalgan effervescent 500mg (PRE)"
Description: "Example of a medication request in a PADV document for paracetamol Dafalgan effervescent tablets 500mg."
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
* identifier.value = "urn:uuid:e0c06f3c-1b63-468a-9c46-e800d39b6a15"
* status = #active
* intent = #order
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* supportingInformation[partOf] = Reference(urn:uuid:7e64e4bf-65d9-40d4-a2b5-e7ddc254f08d)
* authoredOn = "2023-11-04T12:00:00+02:00"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-04"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.end = "2024-02-10"
* dosageInstruction[baseEntry].timing.repeat.when[+] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"
* dosageInstruction[baseEntry].text = "À avaler: 2 comprimés le matin et 2 comprimés le soir du 2024-10-04 au 2024-02-10."
* note.text = "Difficulté à prendre le comprimé pelliculé, substitution par un comprimé effervescent."

Instance: MedicationRequestChangedDafalganEffPml
InstanceOf: CHEMEDEPRMedicationRequestChangedList
Title: "MedicationRequest: Dafalgan effervescent 500mg (PML)"
Description: "Example of a medication request changed in a PML document for paracetamol Dafalgan effervescent tablets 500mg."
Usage: #example
* contained[0] = MedicationParacetamolDafalganEff
* language = #fr-CH
* extension[treatmentplan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentplan].extension[id].url = "id"
* extension[treatmentplan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[id].valueIdentifier.value = "urn:uuid:819febad-dc65-4548-a739-00d1b305c265"
* extension[treatmentplan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:7062399b-61f2-4fb1-b6ba-415c7b6939bc"
* extension[parentDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-pharmaceuticaladvice"
* extension[parentDocument].extension[id].url = "id"
* extension[parentDocument].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[id].valueIdentifier.value = "urn:uuid:819febad-dc65-4548-a739-00d1b305c265"
* extension[parentDocument].extension[externalDocumentId].url = "externalDocumentId"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:6c5a6e38-3782-499c-986f-086e7121828d"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a62e5440-c82c-4270-92fb-d50cd515198a"
* status = #active
* intent = #order
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* supportingInformation[partOf] = Reference(urn:uuid:383ed95d-95d3-4599-b975-9db806359c0d)
* authoredOn = "2023-11-04T12:00:00+02:00"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-04"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.end = "2024-02-10"
* dosageInstruction[baseEntry].timing.repeat.when[+] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"
* dosageInstruction[baseEntry].text = "À avaler: 2 comprimés le matin et 2 comprimés le soir du 2024-10-04 au 2024-02-10."
* note.text = "Difficulté à prendre le comprimé pelliculé, substitution par un comprimé effervescent."