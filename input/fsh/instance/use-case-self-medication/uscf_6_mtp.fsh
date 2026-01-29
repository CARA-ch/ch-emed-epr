Instance: DocumentUCSF6CARAPMP004MTPIbuprofen
InstanceOf: CHEMEDEPRDocumentMedicationTreatmentPlan
Title: "Bundle: MTP for no branded ibuprofen."
Description: "Example of a document bundle for an ibuprofen treatment (in reserve) without commercial product details."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9f70c537-29b3-4f62-8e74-063f21141bca"
* type = #document
* timestamp = "2026-02-12T14:55:55.602+01:00"
* entry[Composition].fullUrl = "urn:uuid:9f70c537-29b3-4f62-8e74-063f21141bca"
* entry[Composition].resource = CompositionUCSF6CARAPMP004MTPIbuprofen
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationStatement].resource = MedicationStatementIbuprofenNoBrand
* entry[MedicationStatement].fullUrl = "urn:uuid:f9b3a1ae-d5ac-40b9-990a-6e4e0f16a5dc"

Instance: CompositionUCSF6CARAPMP004MTPIbuprofen
InstanceOf: CHEMEDEPRCompositionMedicationTreatmentPlan
Title: "Composition: MTP for non-branded ibuprofen."
Description: "Example of an MTP's composition for a generic ibuprofen treatment."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9f70c537-29b3-4f62-8e74-063f21141bca"
* status = #final
* type.coding[+] = $sct#761931002 "Medication treatment plan report (record artifact)"
* type.coding[+] = $lnc#77603-9 "Medication treatment plan.extended Document"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2026-02-12T14:55:55.602+01:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Décision thérapeutique relative à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].entry.reference = "urn:uuid:f9b3a1ae-d5ac-40b9-990a-6e4e0f16a5dc"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Traitement Ibuprofen en réserve (si besoin), max. 400mg/6h.</div>"
