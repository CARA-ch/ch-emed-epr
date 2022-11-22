RuleSet: composition-ruleset

* insert domain-resource-ruleset

* confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"
* confidentiality.extension[confidentialityCode].valueCodeableConcept insert codeableconcept-ruleset
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding insert coding-ruleset
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding.code = #17621005
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding.system = $sct
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding.display = "Normal (qualifier value)"
//* type.coding.display 1..1
* relatesTo.code = http://hl7.org/fhir/document-relationship-type#replaces "Replaces"
* section[originalRepresentation].code.coding 1..1
* identifier.use = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value obeys urn-uuid-invariant
* confidentiality.extension 1..1
//* type insert codeableconcept-ruleset TODO
//* type.coding 1..1 TODO
//* type.coding insert coding-ruleset TODO
* section.author only Reference(CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPROrganization or CHEMEDEPRRelatedPerson or CHEMEDEPRDevice)
* date obeys datetime-only-instant-invariant
* encounter D
* attester[legalAuthenticator] D
* attester D
* event D
* relatesTo D
* author.id D
* author.identifier 0..0 // The literal reference is required
* custodian.id D
* custodian.identifier 0..0 // The literal reference is required
* identifier insert identifier-ruleset
* subject insert codeableconcept-ruleset
* confidentiality.id D
* section.focus 0..0
* section.mode = http://hl7.org/fhir/list-mode#snapshot "Snapshot List" // Document-based workflow, it's always a snapshot and not a live resource
* section.orderedBy D // It's not ordered
* section.entry.id D
* section.emptyReason
//* extension[versionNumber] = 1 // TODO

// Documentation
* confidentiality ^short = "The confidentiality is fixed to normal for publication in the EPR"
* identifier.value ^short = "The document identifier as an URN-encoded UUID"
* extension[versionNumber] ^short = "It shall be the first version of the document"


// A RuleSet for Compositions with annotation
RuleSet: composition-with-annotation-ruleset

* section[annotation].extension[sectionId] 0..0 // Not useful anymore
* section[annotation].code.coding 1..1
* section[annotation].focus D
* section[annotation].emptyReason D
* section[annotation].section D
* section[annotation].id D
* section[annotation] ^short = "Annotation comment concerning this document"
* section[annotation].code insert codeableconcept-ruleset
* section[annotation].code.coding insert coding-ruleset


// A RuleSet for Compositions with original representation
RuleSet: composition-with-original-representation-ruleset

* section[originalRepresentation].code.coding 1..1
* section[originalRepresentation].focus D
* section[originalRepresentation].emptyReason D
* section[originalRepresentation].section D
* section[originalRepresentation].id D
* section[originalRepresentation].code insert codeableconcept-ruleset
* section[originalRepresentation].code.coding insert coding-ruleset
* section[originalRepresentation].entry.id D
* section[originalRepresentation].entry.identifier 0..0 // The literal reference is required
* section[originalRepresentation].extension D
