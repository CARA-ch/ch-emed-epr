RuleSet: document-ruleset

* insert resource-ruleset

// Constraints
* identifier.use = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value obeys urn-uuid-invariant
* entry[Patient] 1..1
* entry[Practitioner].resource only CHEMEDEPRPractitioner
* entry[PractitionerRole].resource only CHEMEDEPRPractitionerRole
* entry.fullUrl obeys urn-uuid-invariant // TODO: this only goes in PML/PMLC
* entry[Patient].resource only CHCorePatientEPR
* entry[Organization].resource only CHEMEDOrganization
* total 0..0
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry.link 0..0
* entry.id D
* entry[Encounter] D
* entry[Location] D
* signature D
* link D
* identifier insert identifier-ruleset
* id D
* language D // Use Composition.language

// Documentation
* entry[Patient] ^short = "The patient targeted by this medication treatment plan"
* entry.fullUrl ^short = "URN-encoded UUID for resource"