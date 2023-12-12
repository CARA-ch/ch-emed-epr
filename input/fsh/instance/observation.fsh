Instance: ObservationTriatecPadv
InstanceOf: CHEMEDEPRObservation
Title: "Observation: Triatec (PADV)"
Description: "The example of an observation for a change in a PADV document"
Usage: #example
* status = #final
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* extension[medicationStatementChanged].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed"
* extension[medicationStatementChanged].valueReference.reference = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:3dcadc51-9509-48f0-b8c2-4ebf7e03f330"
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* performer = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* issued = "2023-04-11T12:00:00+02:00"
* note.text = "Changed intake to range 0.5-1 tablets after discussion with patient."
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"

Instance: ObservationParacetamolAxapharmPrePadvCancel
InstanceOf: CHEMEDEPRObservation
Title: "Observation: CANCEL of Axapharm paracetamol prescription."
Description: "The example for che cancellation of a prescription via a PADV CANCEL document."
Usage: #example
* language = #fr-CH
* extension[prescription].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription"
* extension[prescription].extension[id].url = "id"
* extension[prescription].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[prescription].extension[id].valueIdentifier.value = "urn:uuid:ac8ad5cd-aa46-49d6-a5ec-fbc48a9287b4"
* extension[prescription].extension[externalDocumentId].url = "externalDocumentId"
* extension[prescription].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[prescription].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:e0c06f3c-1b63-468a-9c46-e800d39b6a15"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b34ff5b8-8da2-4a6f-8e68-852b84bad0b7"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* issued = "2023-10-04T00:00:00+02:00"
* performer = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* note.text = "Difficulté à perndre le comprimé pelliculé, substitution par un comprimé effervescent."
