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
* entry[MedicationRequestChanged].fullUrl = "urn:uuid:ac8ad5cd-aa46-49d6-a5ec-fbc48a9287b4"

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


/*
The following example could be stand-alone instead of inline, but due to an issue with the publisher, that would flag
an error when validating the stand-alone changed medication request (it would fail to properly match the 
supportingInformation element to the partOf slicing) but not the bundle, we are only including it in-line
with the actual bunle.
*/ 
Instance: MedicationRequestChangedDafalganEffPre
InstanceOf: CHEMEDEPRChangedMedicationRequest
Title: "MedicationRequest: Dafalgan effervescent 500mg (PRE)"
Description: "Example of a medication request in a PADV document for paracetamol Dafalgan effervescent tablets 500mg."
Usage: #inline
* contained[0] = MedicationParacetamolDafalganEff
* language = #fr-CH
* extension[treatmentplan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentplan].extension[id].url = "id"
* extension[treatmentplan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[id].valueIdentifier.value = "urn:uuid:819febad-dc65-4548-a739-00d1b305c265"
* extension[treatmentplan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:7062399b-61f2-4fb1-b6ba-415c7b6939bc"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac8ad5cd-aa46-49d6-a5ec-fbc48a9287b4"
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
