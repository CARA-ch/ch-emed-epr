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

Instance: ObservationTriatecPml
InstanceOf: CHEMEDEPRObservationList
Title: "Observation: Triatec (PML)"
Description: "The example of an observation for a change in a PML document"
Usage: #example
* status = #final
* extension[treatmentPlan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentPlan].extension[id].url = "id"
* extension[treatmentPlan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[id].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension[treatmentPlan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* extension[medicationStatementChanged].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed"
* extension[medicationStatementChanged].valueReference.reference = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension[parentDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-pharmaceuticaladvice"
* extension[parentDocument].extension[id].url = "id"
* extension[parentDocument].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[id].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension[parentDocument].extension[externalDocumentId].url = "externalDocumentId"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:293bf5b1-f663-4914-8080-4e33aa54b909"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:e729b2f6-62aa-4628-8a13-27c8b8674473"
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* performer = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* issued = "2023-04-11T12:00:00+02:00"
* note.text = "Changed intake to range 0.5-1 tablets after discussion with patient."
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"

Instance: ObservationParacetamolAxapharmPrePadvCancel
InstanceOf: CHEMEDEPRObservation
Title: "Observation: CANCEL of Axapharm paracetamol treatment."
Description: "The example for che cancellation of an Axapharm paracetamol treatment via a PADV CANCEL document."
Usage: #example
* language = #fr-CH
* extension[treatmentPlan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentPlan].extension[id].url = "id"
* extension[treatmentPlan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[id].valueIdentifier.value = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* extension[treatmentPlan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b34ff5b8-8da2-4a6f-8e68-852b84bad0b7"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject.reference = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* issued = "2023-10-04T00:00:00+02:00"
* performer = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* note.text = "Difficulté à perndre le comprimé pelliculé, substitution par un comprimé effervescent."

Instance: ObservationRamiprilPadv
InstanceOf: CHEMEDEPRObservation
Title: "Observation: Ramipril (PADV)"
Description: "The example of an observation for a change in a PADV document targetting a PRE document."
Usage: #example
* language = #fr-CH
* extension[prescription].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription"
* extension[prescription].extension[id].url = "id"
* extension[prescription].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[prescription].extension[id].valueIdentifier.value = "urn:uuid:cc74c310-3e16-45ff-b03d-4e0787e552d3"
* extension[prescription].extension[externalDocumentId].url = "externalDocumentId"
* extension[prescription].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[prescription].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:6f9d43df-fdc2-4ec2-a6d4-88b27dadb291"
* extension[medicationRequestChanged].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed"
* extension[medicationRequestChanged].valueReference.reference = "urn:uuid:ecdad2f3-15b9-40af-a965-b590de794ccb"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:e0a7065f-61c3-4b17-ba6d-9446cd2d6473"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* subject.reference = "urn:uuid:2dbfe659-07d0-45c7-b8df-4a48372049a3"
* issued = "2023-04-12T12:00:00+02:00"
* performer = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* note.text = "Ordonnance de Ramipril Mepha en lieu du Triatec (prix)."
