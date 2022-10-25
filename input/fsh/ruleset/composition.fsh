RuleSet: CompositionRuleSet

* type.coding                       1..1 // TODO Upstream
//* type.coding.display               1..1 // TODO Upstream
* category                          1..1 // TODO Upstream

// Constraints
* confidentiality                   = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding = $sct#17621005 "Normal (qualifier value)"
* relatesTo.code                    = http://hl7.org/fhir/document-relationship-type#replaces "Replaces"
* section[originalRepresentation].code.coding 1..1
* identifier.use                    = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value                  obeys UrnUuid
* confidentiality.extension         1..1
* type                              insert SimpleCodeableConcept
* type.coding                       insert SimpleCoding
* category                          insert SimpleCodeableConcept
* category.coding                   insert SimpleCoding
* category.coding                   1..1
* category.coding.code              1..1
* category.coding.system            1..1
* category.coding.display           1..1
* extension[informationRecipient].valueReference only Reference(CHEMEDEPRPractitioner or CHCorePatientEPR or RelatedPerson or CHCoreOrganizationEPR)
* author                            only Reference(CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or Device or CHCorePatientEPR or RelatedPerson or CHCoreOrganizationEPR)
* section.author                    only Reference(CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or Device or CHCorePatientEPR or RelatedPerson or CHCoreOrganizationEPR)

// Disable unused parts
* meta                              insert NoMetaExceptProfile
* implicitRules                     0..0
* encounter                         0..0
* attester[legalAuthenticator]      0..0
* attester                          0..0
* event                             0..0
* relatesTo                         0..0
* modifierExtension                 0..0
* author.id                         0..0
* author.identifier                 0..0 // The literal reference is required
* custodian.id                      0..0
* custodian.identifier              0..0 // The literal reference is required
* identifier                        insert SimpleIdentifier
* type                              insert SimpleCodeableConcept
* type.coding                       insert SimpleCoding
* category                          insert SimpleCodeableConcept
* category.coding                   insert SimpleCoding
/** category.coding.id                0..0 TODO BUG it makes the snapshot fail
* category.coding.extension         0..0
* category.coding.version           0..0
* category.coding.userSelected      0..0*/
* subject                           insert SimpleCodeableConcept
* confidentiality.id                0..0

* confidentiality.extension[confidentialityCode].valueCodeableConcept insert SimpleCodeableConcept
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding insert SimpleCoding
* section.focus                     0..0
* section.mode                      = http://hl7.org/fhir/list-mode#snapshot "Snapshot List" // Document-based workflow, it's always a snapshot and not a live resource
* section.orderedBy                 0..0 // It's not ordered
//* section.entry.id                  0..0 // TODO BUG https://github.com/hapifhir/org.hl7.fhir.core/issues/954

// Documentation
* confidentiality                   ^short = "The confidentiality is fixed to normal for publication in the EPR"
* identifier.value                  ^short = "The document identifier as an URN-encoded UUID"
//* identifier.value                  = "urn:uuid:41797728-89fb-4cbb-8d11-c79aace92821" (example)


// A RuleSet for Compositions with annotation
RuleSet: CompositionWithAnnotationRuleSet

* section[annotation].extension[sectionId] 0..0 // Not useful anymore
* section[annotation].code.coding   1..1
* section[annotation].focus         0..0
* section[annotation].emptyReason   0..0
* section[annotation].section       0..0
* section[annotation].id            0..0
* section[annotation]               ^short = "Annotation comment concerning this document"
* section[annotation].code          insert SimpleCodeableConcept
* section[annotation].code.coding   insert SimpleCoding


// A RuleSet for Compositions with original representation
RuleSet: CompositionWithOriginalRepresentationRuleSet

* section[originalRepresentation].code.coding       1..1
* section[originalRepresentation].focus             0..0
* section[originalRepresentation].emptyReason       0..0
* section[originalRepresentation].section           0..0
* section[originalRepresentation].id                0..0
* section[originalRepresentation].code              insert SimpleCodeableConcept
* section[originalRepresentation].code.coding       insert SimpleCoding
* section[originalRepresentation].mode              = http://hl7.org/fhir/list-mode#snapshot "Snapshot List" // Document-based workflow, it's always a snapshot and not a live resource
* section[originalRepresentation].entry.id          0..0
* section[originalRepresentation].entry.identifier  0..0 // The literal reference is required
* section[originalRepresentation].extension         0..0
