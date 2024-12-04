Instance: DocumentPadvChangeParacetamolCARAPMP004
InstanceOf: CHEMEDEPRDocumentPharmaceuticalAdvice
Title: "Bundle: PADV CHANGE paracetamol Axapharm"
Description: "The example of a Bundle for a PADV CHANGE document for replacing a previous PRE of paracetamol Axapharm 1g for patient CARAPMP004 with Dafalgan eff."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6c5a6e38-3782-499c-986f-086e7121828d"
* type = #document
* timestamp = "2023-11-04T12:00:00+02:00"
* entry[Composition].resource = CompositionPadvChangeParacetamolCARAPMP004
* entry[Composition].fullUrl = "urn:uuid:6c5a6e38-3782-499c-986f-086e7121828d"
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[Observation].resource = ObservationParacetamolAxapharmPrePadvChange
* entry[Observation].fullUrl = "urn:uuid:7e64e4bf-65d9-40d4-a2b5-e7ddc254f08d"
* entry[MedicationRequestChanged].resource = MedicationRequestChangedDafalganEffPre
* entry[MedicationRequestChanged].fullUrl = "urn:uuid:10bb1f25-f4f1-49cf-9123-9f235cf34c3f"

Instance: CompositionPadvChangeParacetamolCARAPMP004
InstanceOf: CHEMEDEPRCompositionPharmaceuticalAdvice
Title: "Composition: PADV CANCEL paracetamol Axapharm"
Description: "The example of a Composition for a PADV document of type CANCEL for paracetamol Axapharm 1g"
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6c5a6e38-3782-499c-986f-086e7121828d"
* status = #final
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended Document"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2023-11-04T12:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Commentaire relatif à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[pharmaceuticalAdvice].title = "Conseils sur les médicaments"
* section[pharmaceuticalAdvice].code = $lnc#61357-0 "Medication pharmaceutical advice.brief Document"
* section[pharmaceuticalAdvice].entry.reference = "urn:uuid:7e64e4bf-65d9-40d4-a2b5-e7ddc254f08d"
* section[pharmaceuticalAdvice].text.status = #generated
* section[pharmaceuticalAdvice].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Changement concernant le traitement #1.</div>"
