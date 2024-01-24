Instance: DocumentPadv2
InstanceOf: CHEMEDEPRDocumentPharmaceuticalAdvice
Title: "Bundle: PADV 2"
Description: "The example of a Bundle for a PADV CHANGE document targetting a PRE document."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26717ead-d8ef-44cd-b5e9-d0bd3479e0fc"
* type = #document
* timestamp = "2023-04-12T12:00:00+02:00"
* entry[Composition].resource = CompositionPadv2
* entry[Composition].fullUrl = "urn:uuid:26717ead-d8ef-44cd-b5e9-d0bd3479e0fc"
* entry[Patient].resource = PatientDupont
* entry[Patient].fullUrl = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[Observation].resource = ObservationRamiprilPadv
* entry[Observation].fullUrl = "urn:uuid:e0a7065f-61c3-4b17-ba6d-9446cd2d6473"
* entry[MedicationRequestChanged].resource = MedicationRequestRamiprilPadv
* entry[MedicationRequestChanged].fullUrl = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"

Instance: CompositionPadv2
InstanceOf: CHEMEDEPRCompositionPharmaceuticalAdvice
Title: "Composition: PADV 1"
Description: "The example of a Composition for a PADV document of type CHANGE"
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26717ead-d8ef-44cd-b5e9-d0bd3479e0fc"
* status = #final
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended Document"
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* date = "2023-04-12T12:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Commentaire relatif à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[pharmaceuticalAdvice].title = "Conseils sur les médicaments"
* section[pharmaceuticalAdvice].code = $lnc#61357-0 "Medication pharmaceutical advice.brief Document"
* section[pharmaceuticalAdvice].entry.reference = "urn:uuid:e0a7065f-61c3-4b17-ba6d-9446cd2d6473"
* section[pharmaceuticalAdvice].text.status = #generated
* section[pharmaceuticalAdvice].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Changement concernant le traitement #1.</div>"

Instance: MedicationRequestRamiprilPadv
InstanceOf: CHEMEDEPRChangedMedicationRequest
Title: "Changed Medication Request: Ramipril (PADV)"
Description: "Example of a changed medication request for Ramipril."
Usage: #inline
* contained[+] = MedicationRamipril
* language = #fr-CH
* extension[treatmentplan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentplan].extension[id].url = "id"
* extension[treatmentplan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[id].valueIdentifier.value = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* extension[treatmentplan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* status = #active
* intent = #order
* medicationReference = Reference(MedicationRamipril)
* subject = Reference(urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3)
* supportingInformation[partOf] = Reference(urn:uuid:e0a7065f-61c3-4b17-ba6d-9446cd2d6473)
* authoredOn = "2023-04-12"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].patientInstruction = "À prendre avec de l'eau"
* dosageInstruction[baseEntry].timing.repeat.when = #NOON
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseRange.low = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[baseEntry].doseAndRate.doseRange.high = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-04-11"
