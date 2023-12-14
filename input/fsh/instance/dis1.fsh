Instance: DocumentDis1
InstanceOf: CHEMEDEPRDocumentMedicationDispense
Title: "Bundle: DIS 1"
Description: "An example of a dispense document bundle."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:49ed45e9-f7b6-4854-a234-56bf744e9026"
* type = #document
* timestamp = "2023-04-15T09:00:00+02:00"
* entry[Composition].resource = CompositionDis1
* entry[Composition].fullUrl = "urn:uuid:49ed45e9-f7b6-4854-a234-56bf744e9026"
* entry[Patient].resource = PatientDupont
* entry[Patient].fullUrl = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization].resource = OrganizationHug
* entry[Organization].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[MedicationDispense].resource = MedicationDispenseTriatecDis
* entry[MedicationDispense].fullUrl = "urn:uuid:73bc6454-5514-4a6d-a24c-7d9546f873a9"

Instance: CompositionDis1
InstanceOf: CHEMEDEPRCompositionMedicationDispense
Title: "DIS Composition"
Description: "Example for a dispense document composition."
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:49ed45e9-f7b6-4854-a234-56bf744e9026"
* status = #final
* type.coding[+] = $sct#82291000195104 "Medication dispense document (record artifact)"
* type.coding[+] = $lnc#60593-1 "Medication dispensed.extended Document"
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* date = "2023-04-15T09:00:00+02:00"
* author[person].reference = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* title = "Remise"
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[dispense].title = "Dispensation d'un médicament"
* section[dispense].code = $lnc#60590-7 "Medication dispensed.brief Document"
* section[dispense].entry.reference = "urn:uuid:73bc6454-5514-4a6d-a24c-7d9546f873a9"
* section[dispense].text.status = #generated
* section[dispense].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">La dispensation #1</div>"