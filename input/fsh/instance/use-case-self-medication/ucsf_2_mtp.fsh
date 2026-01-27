Instance: DocumentUCSF2CARAPMP004MTPParacetamol
InstanceOf: CHEMEDEPRDocumentMedicationTreatmentPlan
Title: "Bundle: MTP for self-medicating paracetamol."
Description: "Example of a document bundle for a patient adding a medication treatment plan for self-medication with paracetamol."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a6deb711-dc0e-4a87-9ca9-f72bb9ecc858"
* type = #document
* timestamp = "2026-01-22T14:50:55.602+01:00"
* entry[Composition].fullUrl = "urn:uuid:a6deb711-dc0e-4a87-9ca9-f72bb9ecc858"
* entry[Composition].resource = CompositionUCSF2CARAPMP004MTPParacetamol
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[MedicationStatement].resource = MedicationStatementParacetamolSelfMedication
* entry[MedicationStatement].fullUrl = "urn:uuid:cb13d6de-051f-4a3e-ab85-c05650fa254e"

Instance: CompositionUCSF2CARAPMP004MTPParacetamol
InstanceOf: CHEMEDEPRCompositionMedicationTreatmentPlan
Title: "Composition: MTP for self-medicating paracetamol."
Description: "Example of an MTP's composition for a patient adding a self-medication treatment with paracetamol."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a6deb711-dc0e-4a87-9ca9-f72bb9ecc858"
* status = #final
* type.coding[+] = $sct#761931002 "Medication treatment plan report (record artifact)"
* type.coding[+] = $lnc#77603-9 "Medication treatment plan.extended Document"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2026-01-22T14:50:55.602+01:00"
* author[person].reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* title = "Décision thérapeutique relative à la médication"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].entry.reference = "urn:uuid:cb13d6de-051f-4a3e-ab85-c05650fa254e"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Traitement PARACETAMOL Dafalgan cpr effervescent 1g en réserve (si besoin).</div>"
