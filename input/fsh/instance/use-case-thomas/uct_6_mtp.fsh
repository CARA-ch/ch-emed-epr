Instance: DocumentMtpParacetamolDafalganCARAPMP004
InstanceOf: CHEMEDEPRDocumentMedicationTreatmentPlan
Title: "Bundle: MTP Dafalgan Effervescent CARAPMP004"
Description: "MTP for Dafalgan effervescent paracetamol treatment for patient CARAPMP004"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7062399b-61f2-4fb1-b6ba-415c7b6939bc"
* type = #document
* timestamp = "2023-11-04T12:00:00+02:00"
* entry[Composition].resource = CompositionMtpParacetamolDafalganCARAPMP004
* entry[Composition].fullUrl = "urn:uuid:7062399b-61f2-4fb1-b6ba-415c7b6939bc"
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationStatement].resource = MedicationStatementParacetamolDafalganEffMtp
* entry[MedicationStatement].fullUrl = "urn:uuid:adde53ad-7e1c-4f4a-945b-3da093917f8f"


Instance: CompositionMtpParacetamolDafalganCARAPMP004
InstanceOf: CHEMEDEPRCompositionMedicationTreatmentPlan
Title: "Composition: MTP Paracetamol Effervescent CARAPMP004"
Description: "Composition for the MPT for dafalgan effervescent paracetamol treatment for patient CARAPMP004"
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7062399b-61f2-4fb1-b6ba-415c7b6939bc"
* status = #final
* type.coding[+] = $sct#761931002 "Medication treatment plan report (record artifact)"
* type.coding[+] = $lnc#77603-9 "Medication treatment plan.extended Document"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2023-11-04T12:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Décision thérapeutique relative à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].entry.reference = "urn:uuid:adde53ad-7e1c-4f4a-945b-3da093917f8f"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Traitement PARACETAMOL Dafalgan cpr effervescent 1g MORN EVE</div>"