Instance: BundleUtc6bPml
InstanceOf: CHEMEDEPRDocumentMedicationList
Title: "Bundle: use case PML #6b"
Usage: #example
Description: "Post PADV-CHANGE PML for patient CARAPMP004."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:90561ab0-6b84-4c46-8d97-f205e028b1a5"
* type = #document
* timestamp = "2023-10-01T00:00:00+02:00"
* entry[Composition].fullUrl = "urn:uuid:90561ab0-6b84-4c46-8d97-f205e028b1a5"
* entry[Composition].resource = Inline-composition-for-utc-6b-pml
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Practitioner].resource = PractitionerCox
* entry[Practitioner].fullUrl = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* entry[PractitionerRole].resource = PractitionerRoleCoxAtHug
* entry[PractitionerRole].fullUrl = "urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c"
* entry[Organization][+].resource = OrganizationHug
* entry[Organization][=].fullUrl = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"
* entry[Organization][+].resource = OrganizationCara
* entry[Organization][=].fullUrl = "urn:uuid:dd9fd2e4-92d4-4a56-bda2-cf921e432eea"
* entry[Device].fullUrl = "urn:uuid:f5090ee8-b8b1-4b1e-b529-b6d55fad08d4"
* entry[Device].resource = DevicePmp
* entry[MedicationStatement].resource = MedicationStatementParacetamolAxapharmPml
//* entry[MedicationStatement].fullUrl = "urn:uuid:ca449dfb-29d5-4e17-981b-3560ee22b25d"
* entry[MedicationRequest][+].resource = MedicationRequestParacetamolAxapharmPml
* entry[MedicationRequest][=].fullUrl = "urn:uuid:ad120583-d601-4f6c-b16c-bc90079b909e"
* entry[MedicationRequest][+].resource = MedicationRequestChangedDafalganEffPml
* entry[MedicationRequest][=].fullUrl = "urn:uuid:a62e5440-c82c-4270-92fb-d50cd515198a"
* entry[Observation].resource = ObservationParacetamolAxapharmPrePadvChangePml
* entry[Observation].fullUrl = "urn:uuid:383ed95d-95d3-4599-b975-9db806359c0d"

Instance: Inline-composition-for-utc-6b-pml
InstanceOf: CHEMEDEPRCompositionMedicationList
Title: "Composition: use case PML #6b"
Description: "Composition for PML document for post PADV-CHANGE PML for patient CARAPMP004."
Usage: #example
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:90561ab0-6b84-4c46-8d97-f205e028b1a5"
* status = #final
* type.coding[0] = $sct#721912009 "Medication summary document (record artifact)"
* type.coding[+] = $lnc#56445-0 "Medication summary Document"
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* date = "2023-10-01T00:00:00+02:00"
* author = Reference(urn:uuid:f5090ee8-b8b1-4b1e-b529-b6d55fad08d4)
* title = "Liste de médication"
* confidentiality = #N
* confidentiality.extension[confidentialityCode].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension[confidentialityCode].valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* custodian = Reference(urn:uuid:dd9fd2e4-92d4-4a56-bda2-cf921e432eea)
* section[list].title = "Medication List"
* section[list].code = $lnc#10160-0 "History of Medication use Narrative"
* section[list].text.status = #generated
* section[list].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Cette liste de médication a été générée automatiquement par le service eMedication CARA le 1 octore 2023 à 00:00:00 CEST. Les paramètres utilisés pour la génération du document sont : les éléments de type Medication Treatment Plan Item, Prescription Item, Dispense Item et PADV sont inclus ; tous les traitements sont considérés.</div>"
* section[list].entry[+] = Reference(urn:uuid:ca449dfb-29d5-4e17-981b-3560ee22b25d)
* section[list].entry[+] = Reference(urn:uuid:ad120583-d601-4f6c-b16c-bc90079b909e)
* section[list].entry[+] = Reference(urn:uuid:383ed95d-95d3-4599-b975-9db806359c0d)

/*
The following example could be stand-alone instead of inline, but due to an issue with the publisher, that would flag
an error when validating the stand-alone changed medication request (it would fail to properly match the 
supportingInformation element to the partOf slicing) but not the bundle, we are only including it in-line
with the actual bunle.
*/ 
Instance: MedicationRequestChangedDafalganEffPml
InstanceOf: CHEMEDEPRMedicationRequestChangedList
Title: "MedicationRequest: Dafalgan effervescent 500mg (PML)"
Description: "Example of a medication request changed in a PML document for paracetamol Dafalgan effervescent tablets 500mg."
Usage: #inline
* contained[0] = MedicationParacetamolDafalganEff
* language = #fr-CH
* extension[treatmentplan].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[treatmentplan].extension[id].url = "id"
* extension[treatmentplan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[id].valueIdentifier.value = "urn:uuid:17837392-0340-414d-a3bf-fa9f237b91ff"
* extension[treatmentplan].extension[externalDocumentId].url = "externalDocumentId"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentplan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:0399ef84-c71b-413b-8a66-b5a835f4f4c5"
* extension[parentDocument].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-pharmaceuticaladvice"
* extension[parentDocument].extension[id].url = "id"
* extension[parentDocument].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[id].valueIdentifier.value = "urn:uuid:7e64e4bf-65d9-40d4-a2b5-e7ddc254f08d"
* extension[parentDocument].extension[externalDocumentId].url = "externalDocumentId"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:6c5a6e38-3782-499c-986f-086e7121828d"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a62e5440-c82c-4270-92fb-d50cd515198a"
* status = #active
* intent = #order
* medicationReference = Reference(MedicationParacetamolDafalganEff)
* subject = Reference(urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a)
* supportingInformation[partOf] = Reference(urn:uuid:383ed95d-95d3-4599-b975-9db806359c0d)
* authoredOn = "2023-11-04T12:00:00+02:00"
* requester = Reference(urn:uuid:213d609a-1164-459a-bb10-727516ae3d0c)
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2023-10-04"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.end = "2024-02-10"
* dosageInstruction[baseEntry].timing.repeat.when[+] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = $edqm#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "À avaler"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 2 $sct#732936001 "comprimé"
* dosageInstruction[baseEntry].text = "À avaler: 2 comprimés le matin et 2 comprimés le soir du 2024-10-04 au 2024-02-10."
* note.text = "Difficulté à prendre le comprimé pelliculé, substitution par un comprimé effervescent."
