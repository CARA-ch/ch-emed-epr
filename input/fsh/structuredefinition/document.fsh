RuleSet: document-ruleset

* insert resource-ruleset

// Constraints
* identifier.use = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value obeys urn-uuid-invariant
* entry[Patient] 1..1
* entry[Practitioner].resource only CHEMEDEPRPractitioner
* entry[PractitionerRole].resource only CHEMEDEPRPractitionerRole
* entry.fullUrl obeys urn-uuid-invariant // TODO: this only goes in PML/PMLC
* entry[Patient].resource only CHEMEDEPRPatient
* entry[Organization].resource only CHEMEDEPROrganization
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


// =====================================================================================
// Composition MTP
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationTreatmentPlan
Parent: CHEMEDDocumentMedicationTreatmentPlan
Id: ch-emed-epr-document-medicationtreatmentplan
Title: "Document MTP"
Description: "Definition of the bundle for the medication treatment plan document"

* insert document-ruleset

* entry[Composition].resource only CHEMEDEPRCompositionMedicationTreatmentPlan
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatement
* entry[MedicationStatement] 1..1
* entry[MedicationStatement] ^short = "Details about the medication introduced in the treatment plan"
// TODO: entry.fullUrl is weird, 0..1 or 1..1 depending on the entry. https://github.com/hl7ch/ch-core/issues/192


// =====================================================================================
// Composition PRE
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationPrescription
Parent: CHEMEDDocumentMedicationPrescription
Id: ch-emed-epr-document-medicationprescription
Title: "Document PRE"
Description: "Definition of the bundle for the medication prescription document"

* insert document-ruleset

* entry[Composition].resource only CHEMEDEPRCompositionMedicationPrescription
* entry[MedicationRequest].resource only CHEMEDEPRMedicationRequest


// =====================================================================================
// Composition DIS
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationDispense
Parent: CHEMEDDocumentMedicationDispense
Id: ch-emed-epr-document-medicationdispense
Title: "Document DIS"
Description: "Definition of the bundle for the medication dispense document"

* insert document-ruleset

* entry[Composition].resource only CHEMEDEPRCompositionMedicationDispense
* entry[MedicationDispense].resource only CHEMEDEPRMedicationDispense


// =====================================================================================
// Composition PADV
// =====================================================================================
Profile: CHEMEDEPRDocumentPharmaceuticalAdvice
Parent: CHEMEDDocumentPharmaceuticalAdvice
Id: ch-emed-epr-document-pharmaceuticaladvice
Title: "Document PADV"
Description: "Definition of the bundle for the pharmaceutical advice document"

* insert document-ruleset

* entry[Composition].resource only CHEMEDEPRCompositionPharmaceuticalAdvice
* entry[Observation].resource only CHEMEDEPRObservation
* entry[Observation] 1..


// =====================================================================================
// Composition PML
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationList
Parent: CHEMEDDocumentMedicationList
Id: ch-emed-epr-document-medicationlist
Title: "Document PML"
Description: "Definition of the bundle for the medication list document"

* insert document-ruleset

// Constraints
* entry[Composition]
  * resource only CHEMEDEPRCompositionMedicationList
* entry[MedicationStatement]
  * resource only CHEMEDEPRMedicationStatementList
* entry[MedicationRequest]
  * resource only CHEMEDEPRMedicationRequestList
* entry[MedicationDispense]
  * resource only CHEMEDEPRMedicationDispenseList
* entry[Observation]
  * resource only CHEMEDEPRObservationList


// =====================================================================================
// Composition PMLC
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationCard
Parent: CHEMEDDocumentMedicationCard
Id: ch-emed-epr-document-medicationcard
Title: "Document PMLC"
Description: "Definition of the bundle for the medication card document"

* insert document-ruleset

* entry[Composition].resource only CHEMEDEPRCompositionMedicationCard
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementCard
