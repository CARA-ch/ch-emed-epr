Instance: DocumentPreParacetamolAxapharmCARAPMP004
InstanceOf: CHEMEDEPRDocumentMedicationPrescription
Title: "Bundle: PRE Paracetamol Axapharm 1g"
Description: "Initial PRE for paracetamol treatment for patient CARAPMP004."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e0c06f3c-1b63-468a-9c46-e800d39b6a15"
* type = #document
* timestamp = "2023-10-01T00:00:00+02:00"
* entry[Composition].resource = CompositionPreParacetamolAxapharmCARAPMP004
* entry[Composition].fullUrl = "urn:uuid:e0c06f3c-1b63-468a-9c46-e800d39b6a15"
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationRequest].resource = MedicationRequestParacetamolAxapharmPre
* entry[MedicationRequest].fullUrl = "urn:uuid:ac8ad5cd-aa46-49d6-a5ec-fbc48a9287b4"
* entry[Binary].resource = OriginalRepresentationPreParacetamolAxapharmCARAPMP004
* entry[Binary].fullUrl = "urn:uuid:a4f624e3-fa5a-4889-9bd1-821c8fefff60"

Instance: CompositionPreParacetamolAxapharmCARAPMP004
InstanceOf: CHEMEDEPRCompositionMedicationPrescription
Title: "PRE Composition"
Description: "Example for a prescription document composition."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e0c06f3c-1b63-468a-9c46-e800d39b6a15"
* status = #final
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* type.coding[+] = $lnc#57833-6 "Prescription for medication"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2023-10-01T00:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Ordonnance"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[prescription].title = "Prescription médicamenteuse"
* section[prescription].code = $lnc#57828-6 "Prescription list"
* section[prescription].entry.reference = "urn:uuid:ac8ad5cd-aa46-49d6-a5ec-fbc48a9287b4"
* section[prescription].text.status = #generated
* section[prescription].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">L'ordonnance #1 pour paracétamol Axapharm comprimé 1g - 1 comprimé MATIN MIDI SOIR - à prendre avec des repas</div>"
* section[originalRepresentation].title = "Représentation originale"
* section[originalRepresentation].code = $lnc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Placeholder original representation of a prescription: not a valid binary</div>"
* section[originalRepresentation].entry = Reference(urn:uuid:a4f624e3-fa5a-4889-9bd1-821c8fefff60)

Instance: OriginalRepresentationPreParacetamolAxapharmCARAPMP004
InstanceOf: Binary
Title: "PRE Original Representation"
Description: "Placeholder for a prescription's original representation. It contains a non-valid empty binary."
Usage: #inline
* id = "original-representation-pdf"
* contentType = #application/pdf
//* data = "..."