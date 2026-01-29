Instance: DocumentUCSF7CARAPMP004PREDafalgan
InstanceOf: CHEMEDEPRDocumentMedicationPrescription
Title: "Bundle: PRE Dafalgan eff 500mg"
Description: "New PRE for paracetamol self-medication of patient CARAPMP004 with Dafalgan effervescent tablets 500mg."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8fdaa924-a44c-4f23-8b7b-b23b4ca44534"
* type = #document
* timestamp = "2026-02-12T14:55:55.602+01:00"
* entry[Composition].resource = CompositionUCSF7CARAPMP004PREDafalgan
* entry[Composition].fullUrl = "urn:uuid:8fdaa924-a44c-4f23-8b7b-b23b4ca44534"
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationRequest][+].resource = MedicationRequestDafalganEffSelfMedicationPre
* entry[MedicationRequest][=].fullUrl = "urn:uuid:fd712f74-9f63-4c6a-89df-4bc254ee80b3"
* entry[MedicationRequest][+].resource = MedicationRequestIbuprofenPre
* entry[MedicationRequest][=].fullUrl = "urn:uuid:c1da921d-1687-49dc-9360-e1d1748bbe1a"
* entry[Binary].resource = OriginalRepresentationUCSF7CARAPMP004PREDafalgan
* entry[Binary].fullUrl = "urn:uuid:fd3c99eb-b351-4f1a-a3c2-ec7c3d250478"

Instance: CompositionUCSF7CARAPMP004PREDafalgan
InstanceOf: CHEMEDEPRCompositionMedicationPrescription
Title: "Composition: PRE document for Dafalgan self-medication"
Description: "Example of a PRE composition with a single medication request for Dafalgan (paracetamol) belonging to a self-medication treatment."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8fdaa924-a44c-4f23-8b7b-b23b4ca44534"
* status = #final
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* type.coding[+] = $lnc#57833-6 "Prescription for medication"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2026-02-12T14:55:55.602+01:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Ordonnance"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[prescription].title = "Prescription médicamenteuse"
* section[prescription].code = $lnc#57828-6 "Prescription list"
* section[prescription].entry[+].reference = "urn:uuid:fd712f74-9f63-4c6a-89df-4bc254ee80b3"
* section[prescription].entry[+].reference = "urn:uuid:c1da921d-1687-49dc-9360-e1d1748bbe1a"
* section[prescription].text.status = #generated
* section[prescription].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ordonnance pour ibuprofen (max. 400mg/6h) en réserve et dafalgan cpr 500g eff (max. 1cpr/6h) en réserve.</div>"
* section[originalRepresentation].title = "Représentation originale"
* section[originalRepresentation].code = $lnc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Placeholder original representation of a prescription: <span id=\"uuid-fd3c99eb-b351-4f1a-a3c2-ec7c3d250478\">not a valid binary</span></div>"
* section[originalRepresentation].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[originalRepresentation].text.extension[=].extension[+].url = "htmlid"
* section[originalRepresentation].text.extension[=].extension[=].valueString = "uuid-fd3c99eb-b351-4f1a-a3c2-ec7c3d250478"
* section[originalRepresentation].text.extension[=].extension[+].url = "data"
* section[originalRepresentation].text.extension[=].extension[=].valueUri = "urn:uuid:fd3c99eb-b351-4f1a-a3c2-ec7c3d250478"
* section[originalRepresentation].entry = Reference(urn:uuid:fd3c99eb-b351-4f1a-a3c2-ec7c3d250478)

Instance: OriginalRepresentationUCSF7CARAPMP004PREDafalgan
InstanceOf: Binary
Title: "PRE Original Representation for Dafalgan comprimé effervescent 500mg"
Description: "Placeholder for a prescription's original representation. It contains a non-valid empty binary."
Usage: #inline
* id = "original-representation-pdf"
* contentType = #application/pdf
//* data = "..."