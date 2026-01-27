Instance: DocumentUCSF4CARAPMP004DISDafalganWithoutPrescription
InstanceOf: CHEMEDEPRDocumentMedicationDispense
Title: "Bundle: DIS for a self-medicating dafalgan treatment."
Description: "Example of a document bundle of type DIS, documenting the dispensation of a box of effervescent dafalgan for a self-medicating treatment to patient CARAPMP004."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2f647b00-46dd-4a4b-9aa2-e77ab9bb6331"
* type = #document
* timestamp = "2026-01-24T14:50:55.602+01:00"
* entry[Composition].fullUrl = "urn:uuid:2f647b00-46dd-4a4b-9aa2-e77ab9bb6331"
* entry[Composition].resource = CompositionUCSF4CARAPMP004DISDafalganWithoutPrescription
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[MedicationDispense].resource = MedicationDispenseUSCF4DafalganDis
* entry[MedicationDispense].fullUrl = "urn:uuid:9efd2f67-b7a6-4682-840e-e6b532938391"
* entry[Practitioner].resource = PharmacistDoe
* entry[Practitioner].fullUrl = "urn:uuid:37310437-d3bb-48a2-b2f2-a3f0e41440c7"
* entry[PractitionerRole].resource = PractitionerRoleDoeAtPharmaSI
* entry[PractitionerRole].fullUrl = "urn:uuid:e901b242-7f96-434e-acee-685dd24aad17"
* entry[Organization].resource = OrganizationPharmaSI
* entry[Organization].fullUrl = "urn:uuid:7ba4c339-2731-4ac9-9fe2-8eabcce3d9eb"

Instance: CompositionUCSF4CARAPMP004DISDafalganWithoutPrescription
InstanceOf: CHEMEDEPRCompositionMedicationDispense
Title: "Composition: dispensation of self-medicated paracetamol."
Description: "Example of a dispensation of a box of effervescent dafalgan for a self-medicating treatment."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2f647b00-46dd-4a4b-9aa2-e77ab9bb6331"
* status = #final
* type.coding[+] = $sct#82291000195104 "Medication dispense document (record artifact)"
* type.coding[+] = $lnc#60593-1 "Medication dispensed.extended Document"
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* date = "2026-01-24T14:50:55.602+01:00"
* author[person].reference = "urn:uuid:e901b242-7f96-434e-acee-685dd24aad17"
* title = "Remise"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[dispense].title = "Dispensation d'un médicament"
* section[dispense].code = $lnc#60590-7 "Medication dispensed.brief Document"
* section[dispense].entry.reference = "urn:uuid:9efd2f67-b7a6-4682-840e-e6b532938391"
* section[dispense].text.status = #generated
* section[dispense].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dispensation de 1 boite de Dafalgan effervescent (40 cpr x paracetamol 500mg) sans ordonnance.</div>"
