Instance: DocumentMtp1
InstanceOf: CHEMEDEPRDocumentMedicationTreatmentPlan
Title: "Bundle: MTP 1"
Description: "The example of a Bundle for a MTP document"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* type = #document
* timestamp = "2023-04-11T12:00:00+02:00"
* entry[Composition].resource = CompositionMtp1
* entry[Composition].fullUrl = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* entry[Patient].resource = PatientDupont
* entry[Patient].fullUrl = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationStatement].resource = MedicationStatementTriatecMtp
* entry[MedicationStatement].fullUrl = "urn:uuid:e1b5e341-d1a4-4a44-adad-7949974de994"


Instance: CompositionMtp1
InstanceOf: CHEMEDEPRCompositionMedicationTreatmentPlan
Title: "Composition: MTP 1"
Description: "The example of a Composition for a MTP document"
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended Document"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* date = "2023-04-11T12:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Décision thérapeutique relative à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].entry.reference = "urn:uuid:e1b5e341-d1a4-4a44-adad-7949974de994"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Le traitement #1</div>"
