Instance: BundleUtc1Pml
InstanceOf: CHEMEDEPRDocumentMedicationList
Title: "Bundle: use case PML #1"
Usage: #example
Description: "PML pre-examination for patient CARAPMP004. No previous treatments, empty medication list."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:87f151e3-9e67-48aa-8cfe-f816ae5fc084"
* type = #document
* timestamp = "2023-10-01T00:00:00+02:00"
* entry[Composition].fullUrl = "urn:uuid:87f151e3-9e67-48aa-8cfe-f816ae5fc084"
* entry[Composition].resource = Inline-composition-for-utc-1-pml
* entry[Patient].resource = PatientCARAPMP004
* entry[Patient].fullUrl = "urn:uuid:9b00e81e-1165-4039-9d60-698ef838ae1a"
* entry[Device].fullUrl = "urn:uuid:f5090ee8-b8b1-4b1e-b529-b6d55fad08d4"
* entry[Device].resource = DevicePmp
* entry[Organization].resource = OrganizationCara
* entry[Organization].fullUrl = "urn:uuid:dd9fd2e4-92d4-4a56-bda2-cf921e432eea"

Instance: Inline-composition-for-utc-1-pml
InstanceOf: CHEMEDEPRCompositionMedicationList
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:87f151e3-9e67-48aa-8cfe-f816ae5fc084"
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
