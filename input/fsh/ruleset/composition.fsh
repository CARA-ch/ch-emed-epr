RuleSet: composition-ruleset

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
* extension[informationRecipient].valueReference only Reference(CHEMEDEPRPractitioner or CHCorePatientEPR or CHEMEDOrganization)
* section.author only Reference(CHEMEDEPRPractitionerRole or CHCorePatientEPR)
// BUG extension[informationRecipient] shows the wrong types
* date obeys datetime-only-instant-invariant

// Disable unused parts
* meta insert meta-ruleset
* implicitRules 0..0
* encounter 0..0
* attester[legalAuthenticator] 0..0
* attester 0..0
* event 0..0
* relatesTo 0..0
* modifierExtension 0..0
* author.id 0..0
* author.identifier 0..0 // The literal reference is required
* custodian.id 0..0
* custodian.identifier 0..0 // The literal reference is required
* identifier insert identifier-ruleset
* subject insert codeableconcept-ruleset
* confidentiality.id 0..0

* section.focus 0..0
* section.mode = http://hl7.org/fhir/list-mode#snapshot "Snapshot List" // Document-based workflow, it's always a snapshot and not a live resource
* section.orderedBy 0..0 // It's not ordered
//* section.entry.id 0..0 // TODO BUG https://github.com/hapifhir/org.hl7.fhir.core/issues/954
* section.emptyReason

// Documentation
* confidentiality ^short = "The confidentiality is fixed to normal for publication in the EPR"
* identifier.value ^short = "The document identifier as an URN-encoded UUID"
//* identifier.value = "urn:uuid:41797728-89fb-4cbb-8d11-c79aace92821" (example)


// A RuleSet for Compositions with annotation
RuleSet: composition-with-annotation-ruleset

* section[annotation].extension[sectionId] 0..0 // Not useful anymore
* section[annotation].code.coding 1..1
* section[annotation].focus 0..0
* section[annotation].emptyReason 0..0
* section[annotation].section 0..0
* section[annotation].id 0..0
* section[annotation] ^short = "Annotation comment concerning this document"
* section[annotation].code insert codeableconcept-ruleset
* section[annotation].code.coding insert coding-ruleset


// A RuleSet for Compositions with original representation
RuleSet: composition-with-original-representation-ruleset

* section[originalRepresentation].code.coding 1..1
* section[originalRepresentation].focus 0..0
* section[originalRepresentation].emptyReason 0..0
* section[originalRepresentation].section 0..0
* section[originalRepresentation].id 0..0
* section[originalRepresentation].code insert codeableconcept-ruleset
* section[originalRepresentation].code.coding insert coding-ruleset
* section[originalRepresentation].entry.id 0..0
* section[originalRepresentation].entry.identifier 0..0 // The literal reference is required
* section[originalRepresentation].extension 0..0
