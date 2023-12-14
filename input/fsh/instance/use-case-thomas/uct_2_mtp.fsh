Instance: DocumentMtpParacetamolCARAPMP004
InstanceOf: CHEMEDEPRDocumentMedicationTreatmentPlan
Title: "Bundle: MTP Paracetamol CARAPMP004"
Description: "Initial MTP for paracetamol treatment for patient CARAPMP004"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* type = #document
* timestamp = "2023-10-01T00:00:00+02:00"
* entry[Composition].resource = CompositionMtpParacetamolCARAPMP004
* entry[Composition].fullUrl = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationStatement].resource = MedicationStatementParacetamolAxapharmMtp
* entry[MedicationStatement].fullUrl = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"


Instance: CompositionMtpParacetamolCARAPMP004
InstanceOf: CHEMEDEPRCompositionMedicationTreatmentPlan
Title: "Composition: MTP Paracetamol CARAPMP004"
Description: "Composition for the initial MPT for paracetamol treatment for patient CARAPMP004"
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* status = #final
* type.coding[+] = $sct#761931002 "Medication treatment plan report (record artifact)"
* type.coding[+] = $lnc#77603-9 "Medication treatment plan.extended Document"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2023-10-01T00:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Décision thérapeutique relative à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].entry.reference = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Traitement PARACETAMOL Axapharm cpr pell 1g MORN NOON EVE</div>"