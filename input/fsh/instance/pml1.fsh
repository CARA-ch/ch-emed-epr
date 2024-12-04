Instance: BundlePml1
InstanceOf: CHEMEDEPRDocumentMedicationList
Title: "Bundle: PML #1"
Usage: #example
Description: "PML bundle example"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7042ee91-a485-47cb-94fa-a1c2f0ef2dbc"
* type = #document
* timestamp = "2023-04-21T09:21:54.701+02:00"
* entry[Composition].fullUrl = "urn:uuid:7042ee91-a485-47cb-94fa-a1c2f0ef2dbc"
* entry[Composition].resource = Inline-Instance-for-pml1-1
* entry[Patient].fullUrl = "urn:uuid:35b7e959-3b7e-416a-ac16-68896d26d5bb"
* entry[Patient].resource = Inline-Instance-for-pml1-2
* entry[Device].fullUrl = "urn:uuid:7dd779b9-c6ac-4fea-81e3-9d7cc6bd040b"
* entry[Device].resource = Inline-Instance-for-pml1-3
* entry[Organization].fullUrl = "urn:uuid:0b08ced4-feaa-416e-98b9-78d1597e0940"
* entry[Organization].resource = Inline-Instance-for-pml1-4
* entry[MedicationStatement].fullUrl = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* entry[MedicationStatement].resource = Inline-Instance-for-pml1-5

Instance: Inline-Instance-for-pml1-1
InstanceOf: CHEMEDEPRCompositionMedicationList
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7042ee91-a485-47cb-94fa-a1c2f0ef2dbc"
* status = #final
* type.coding[0] = $sct#721912009 "Medication summary document (record artifact)"
* type.coding[+] = $lnc#56445-0 "Medication summary Document"
* subject = Reference(urn:uuid:35b7e959-3b7e-416a-ac16-68896d26d5bb)
* date = "2023-04-21T09:21:54+02:00"
* author = Reference(urn:uuid:7dd779b9-c6ac-4fea-81e3-9d7cc6bd040b)
* title = "Liste de médication"
* confidentiality = #N
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* custodian = Reference(urn:uuid:0b08ced4-feaa-416e-98b9-78d1597e0940)
* section[list].title = "Medication List"
* section[list].code = $lnc#10160-0 "History of Medication use Narrative"
* section[list].text.status = #generated
* section[list].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Cette liste de médication a été générée automatiquement par le service eMedication CARA le 21 avril 2023 à 09:21:54 CEST. Les paramètres utilisés pour la génération du document sont : les éléments de type Medication Treatment Plan Item, Prescription Item, Dispense Item et PADV sont inclus ; tous les traitements sont considérés.</div>"
* section[list].entry = Reference(urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2)

Instance: Inline-Instance-for-pml1-2
InstanceOf: CHEMEDEPRPatient
Usage: #inline
* identifier[0].use = #official
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.191.1.0.2.1"
* identifier[=].value = "7a4ec59f-a024-4cfb-bc04-3339c53cb9ac"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.191.4.1.10.1.3"
* identifier[=].value = "L53672539"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.196.3.2.1"
* identifier[=].value = "MAGMED005"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.196.2.2.1"
* identifier[=].value = "3486389"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.196.3.2.1"
* identifier[=].value = "3503409"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.196.2.2.1"
* identifier[=].value = "3505915"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.128.4.1.4.2.3.2.1.1.1"
* identifier[=].value = "99146298"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.196.3.2.1"
* identifier[=].value = "3475203"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.1.191.1.0.12.3.101"
* identifier[=].value = "02fc1dd1-fc13-4ca0-874c-b8372b7e6cfc"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.999.1"
* identifier[=].value = "11111111"
* active = true
* name.family = "Behluli-Qazimi"
* name.given = "Leandra Corina"
* gender = #female
* birthDate = "2002-12-21"

Instance: Inline-Instance-for-pml1-3
InstanceOf: CHEMEDEPRDevice
Usage: #inline
* deviceName.name = "PMP CARA v0.1"
* deviceName.type = #model-name
* type = $sct#701612004 "Pharmaceutical information system application software (physical object)"
* version.value = "8153cba"
* owner = Reference(urn:uuid:0b08ced4-feaa-416e-98b9-78d1597e0940)

Instance: Inline-Instance-for-pml1-4
InstanceOf: CHEMEDEPROrganization
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601001407428"
* name = "Association CARA"
* address.line = "Route de la Corniche 3a"
* address.city = "Épalinges"
* address.state = "Vaud"
* address.postalCode = "1066"
* address.country = "CH"

Instance: Inline-Instance-for-pml1-5
InstanceOf: CHEMEDEPRMedicationStatementList
Usage: #inline
* contained[0].resourceType = "Medication"
* contained[=].id = "medication-1"
* contained[=].code = urn:oid:2.51.1.1#7680538751228 "TRIATEC Tabl 2.5 mg 20 Stk"
* contained[=].code.text = "TRIATEC Tabl 2.5 mg"
* contained[=].form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* contained[=].form.text = "Tablet"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "practitioner-role-1"
* contained[=].practitioner.reference = "#practitioner-1"
* contained[=].organization.reference = "#organization-1"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "practitioner-1"
* contained[=].identifier.system = "urn:oid:2.51.1.3"
* contained[=].identifier.value = "7601000234438"
* contained[=].name.family = "Cox"
* contained[=].name.given = "Perry"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-1"
* contained[=].identifier.system = "urn:oid:2.51.1.3"
* contained[=].identifier.value = "7601000234438"
* contained[=].name = "Hôpitaux universitaires de Genève"
* contained[=].address.line = "Rue Gabrielle-Perret-Gentil 4"
* contained[=].address.city = "Genève"
* contained[=].address.postalCode = "1205"
* contained[=].address.country = "CH"
* extension[parentDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[parentDocument].extension[id].url = "id"
* extension[parentDocument].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[id].valueIdentifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* extension[parentDocument].extension[externalDocumentId].url = "externalDocumentId"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:24c84eef-f9db-4710-8f6c-2d342ad3ac2d"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:41b97645-e263-47c2-8d96-79da451a33f2"
* status = #active
* medicationReference.reference = "#medication-1"
* subject = Reference(urn:uuid:35b7e959-3b7e-416a-ac16-68896d26d5bb)
* informationSource.reference = "#practitioner-role-1"
* dosage[baseEntry].id = "#dosage-1"
* dosage[baseEntry].patientInstruction = "À prendre avec de l'eau"
* dosage[baseEntry].text = "À prendre avec de l'eau"
* dateAsserted = "2023-04-11"