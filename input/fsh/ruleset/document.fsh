RuleSet: DocumentRuleSet

// Constraints
* identifier.use                    = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value                  obeys UrnUuid
* entry[Patient]                    1..1
* entry[Practitioner].resource      only CHEMEDEPRPractitioner
* entry[PractitionerRole].resource  only CHEMEDEPRPractitionerRole
* entry.fullUrl                     obeys UrnUuid
* entry[Patient].resource           only CHCorePatientEPR
* entry[Organization].resource      only CHCoreOrganizationEPR

// Disable the unused parts
* meta                              insert NoMetaExceptProfile
* implicitRules                     0..0
* total                             0..0
* entry.search                      0..0
* entry.request                     0..0
* entry.response                    0..0
* entry.link                        0..0
* entry.id                          0..0
* entry[Encounter]                  0..0
* entry[Location]                   0..0
* signature                         0..0 // TODO: we may want that
* link                              0..0
* identifier                        insert SimpleIdentifier
* id                                0..0
* language                          0..0 // Use Composition.language

// Documentation
* entry[Patient]                    ^short = "The patient targeted by this medication treatment plan"
* entry.fullUrl                     ^short = "URN-encoded UUID for resource"