Instance: DocumentPadv1
InstanceOf: CHEMEDEPRDocumentPharmaceuticalAdvice
Title: "Bundle: PADV 1"
Description: "The example of a Bundle for a PADV CHANGE document"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:836b65e4-a588-414e-9633-da0bba5981d0"
* type = #document
* timestamp = "2023-04-11T12:00:00+02:00"
* entry[Composition].resource = CompositionPadv1
* entry[Composition].fullUrl = "urn:uuid:293bf5b1-f663-4914-8080-4e33aa54b909"
* entry[Patient].resource = PatientDupont
* entry[Patient].fullUrl = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[Observation].resource = ObservationTriatecPadv
* entry[Observation].fullUrl = "urn:uuid:3dcadc51-9509-48f0-b8c2-4ebf7e03f330"
* entry[MedicationStatementChanged].resource = MedicationStatementTriatecPadv
* entry[MedicationStatementChanged].fullUrl = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"

Instance: CompositionPadv1
InstanceOf: CHEMEDEPRCompositionPharmaceuticalAdvice
Title: "Composition: PADV 1"
Description: "The example of a Composition for a PADV document of type CHANGE"
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:293bf5b1-f663-4914-8080-4e33aa54b909"
* status = #final
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended Document"
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* date = "2023-04-11T12:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Commentaire relatif à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[pharmaceuticalAdvice].title = "Conseils sur les médicaments"
* section[pharmaceuticalAdvice].code = $lnc#61357-0 "Medication pharmaceutical advice.brief Document"
* section[pharmaceuticalAdvice].entry.reference = "urn:uuid:3dcadc51-9509-48f0-b8c2-4ebf7e03f330"
* section[pharmaceuticalAdvice].text.status = #generated
* section[pharmaceuticalAdvice].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Changement concernant le traitement #1.</div>"

Instance: ObservationTriatecPadv
InstanceOf: CHEMEDEPRObservation
Title: "Observation: Triatec (PADV)"
Description: "The example of an observation for a change in a PADV document"
Usage: #inline
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
