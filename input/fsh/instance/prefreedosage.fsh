Instance: DocumentPreCARAPMP004MarcoumarFreeTextDosage
InstanceOf: CHEMEDEPRDocumentMedicationPrescription
Title: "Bundle: PRE Marcoumar tabs 3mg with alternating dosage"
Description: "New PRE for Marcoumar tabs 3mg"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7af3e5e5-532e-411c-8204-4cb15598bbe9"
* type = #document
* timestamp = "2026-01-12T14:55:55+01:00"
* entry[Composition].resource = CompositionPreCARAPMP004MarcoumarFreeTextDosage
* entry[Composition].fullUrl = "urn:uuid:7af3e5e5-532e-411c-8204-4cb15598bbe9"
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationRequest].resource = MedicationRequestMarcoumarPre
* entry[MedicationRequest].fullUrl = "urn:uuid:81783913-fb71-485a-890f-c5041da015a3"
* entry[Binary].resource = OriginalRepresentationPreCARAPMP004MarcoumarFreeTextDosage
* entry[Binary].fullUrl = "urn:uuid:9925d905-3983-4e3c-a635-e43e5b21e9a8"

Instance: CompositionPreCARAPMP004MarcoumarFreeTextDosage
InstanceOf: CHEMEDEPRCompositionMedicationPrescription
Title: "Composition: PRE Marcoumar tabs 3mg with alternating dosage"
Description: "Example of a PRE composition with a single medication request for Marcoumar tabs 3mg with alternating dosage."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7af3e5e5-532e-411c-8204-4cb15598bbe9"
* status = #final
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* type.coding[+] = $lnc#57833-6 "Prescription for medication"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2026-01-12T14:55:55+01:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Ordonnance"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[prescription].title = "Prescription médicamenteuse"
* section[prescription].code = $lnc#57828-6 "Prescription list"
* section[prescription].entry.reference = "urn:uuid:81783913-fb71-485a-890f-c5041da015a3"
* section[prescription].text.status = #generated
* section[prescription].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ordonnance pour 25xcpr Marcoumar 3mg. Lun: 1cpr; mar: 0,5cpr; mer: 1cpr; jeu: 0,5cpr; ven: 1cpr; sam: 0,5cpr; dim: 0.</div>"
* section[originalRepresentation].title = "Représentation originale"
* section[originalRepresentation].code = $lnc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Placeholder original representation of a prescription: <span id=\"uuid-9925d905-3983-4e3c-a635-e43e5b21e9a8\">not a valid binary</span></div>"
* section[originalRepresentation].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[originalRepresentation].text.extension[=].extension[+].url = "htmlid"
* section[originalRepresentation].text.extension[=].extension[=].valueString = "uuid-9925d905-3983-4e3c-a635-e43e5b21e9a8"
* section[originalRepresentation].text.extension[=].extension[+].url = "data"
* section[originalRepresentation].text.extension[=].extension[=].valueUri = "urn:uuid:9925d905-3983-4e3c-a635-e43e5b21e9a8"
* section[originalRepresentation].entry = Reference(urn:uuid:9925d905-3983-4e3c-a635-e43e5b21e9a8)

Instance: OriginalRepresentationPreCARAPMP004MarcoumarFreeTextDosage
InstanceOf: Binary
Title: "PRE Original Representation for Dafalgan comprimé effervescent 500mg"
Description: "Placeholder for a prescription's original representation. It contains a non-valid empty binary."
Usage: #inline
* id = "original-representation-pdf"
* contentType = #application/pdf
//* data = "..."