Instance: DocumentPre1
InstanceOf: CHEMEDEPRDocumentMedicationPrescription
Title: "Bundle: PRE 1"
Description: "An example of a prescription document bundle."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6f9d43df-fdc2-4ec2-a6d4-88b27dadb291"
* type = #document
* timestamp = "2023-04-11T12:00:00+02:00"
* entry[Composition].resource = CompositionPre1
* entry[Composition].fullUrl = "urn:uuid:6f9d43df-fdc2-4ec2-a6d4-88b27dadb291"
* entry[Patient].resource = PatientDupont
* entry[Patient].fullUrl = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationRequest].resource = MedicationRequestTriatecPre
* entry[MedicationRequest].fullUrl = "urn:uuid:cc74c310-3e16-45ff-b03d-4e0787e552d3"
* entry[Binary].resource = OriginalRepresentationPre1
* entry[Binary].fullUrl = "urn:uuid:dd4331ae-28da-476c-b59c-75b9cdf4f1b3"

Instance: CompositionPre1
InstanceOf: CHEMEDEPRCompositionMedicationPrescription
Title: "PRE Composition"
Description: "Example for a prescription document composition."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6f9d43df-fdc2-4ec2-a6d4-88b27dadb291"
* status = #final
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* type.coding[+] = $lnc#57833-6 "Prescription for medication"
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* date = "2023-04-11T12:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Ordonnance"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[prescription].title = "Prescription médicamenteuse"
* section[prescription].code = $lnc#57828-6 "Prescription list"
* section[prescription].entry.reference = "urn:uuid:cc74c310-3e16-45ff-b03d-4e0787e552d3"
* section[prescription].text.status = #generated
* section[prescription].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">L'ordonnance #1</div>"
* section[originalRepresentation].title = "Représentation originale"
* section[originalRepresentation].code = $lnc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Placeholder original representation of a prescription: not a valid binary</div>"
* section[originalRepresentation].entry = Reference(urn:uuid:dd4331ae-28da-476c-b59c-75b9cdf4f1b3)

Instance: OriginalRepresentationPre1
InstanceOf: Binary
Title: "PRE Original Representation"
Description: "Placeholfer for a prescription's original representation. It contains a non-valid empty binary."
Usage: #inline
* id = "original-representation-pdf"
* contentType = #application/pdf
