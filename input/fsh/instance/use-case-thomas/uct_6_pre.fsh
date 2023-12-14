Instance: DocumentPreParacetamolDafalganCARAPMP004
InstanceOf: CHEMEDEPRDocumentMedicationPrescription
Title: "Bundle: PRE Dafalgan eff 500mg"
Description: "New PRE for paracetamol treatment for patient CARAPMP004 with Dafalgan effervescent tablets 500mg."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:31b60b8f-e15d-42ce-9558-57fde055da7a"
* type = #document
* timestamp = "2023-10-04T00:00:00+02:00"
* entry[Composition].resource = CompositionPreParacetamolDafalganCARAPMP004
* entry[Composition].fullUrl = "urn:uuid:31b60b8f-e15d-42ce-9558-57fde055da7a"
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationRequest].resource = MedicationRequestDafalganEffPre
* entry[MedicationRequest].fullUrl = "urn:uuid:b1a6484b-d984-4aa0-adee-8f426b50b991"
* entry[Binary].resource = OriginalRepresentationPreParacetamolDafalganCARAPMP004
* entry[Binary].fullUrl = "urn:uuid:ecaae02c-9311-47c0-9af3-f7059c6ccd77"

Instance: CompositionPreParacetamolDafalganCARAPMP004
InstanceOf: CHEMEDEPRCompositionMedicationPrescription
Title: "PRE Composition"
Description: "Example for a prescription document composition."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:31b60b8f-e15d-42ce-9558-57fde055da7a"
* status = #final
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* type.coding[+] = $lnc#57833-6 "Prescription for medication"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2023-10-04T00:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Ordonnance"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[prescription].title = "Prescription médicamenteuse"
* section[prescription].code = $lnc#57828-6 "Prescription list"
* section[prescription].entry.reference = "urn:uuid:b1a6484b-d984-4aa0-adee-8f426b50b991"
* section[prescription].text.status = #generated
* section[prescription].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">L'ordonnance #2 pour paracétamol Dafalgan comprimé effervescent 500mg - 2 comprimé MATIN SOIR - à prendre avec des repas</div>"
* section[originalRepresentation].title = "Représentation originale"
* section[originalRepresentation].code = $lnc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Placeholder original representation of a prescription: not a valid binary</div>"
* section[originalRepresentation].entry = Reference(urn:uuid:ecaae02c-9311-47c0-9af3-f7059c6ccd77)

Instance: OriginalRepresentationPreParacetamolDafalganCARAPMP004
InstanceOf: Binary
Title: "PRE Original Representation"
Description: "Placeholder for a prescription's original representation. It contains a non-valid empty binary."
Usage: #inline
* id = "original-representation-pdf"
* contentType = #application/pdf
