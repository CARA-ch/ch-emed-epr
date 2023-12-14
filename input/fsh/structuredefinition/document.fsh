RuleSet: document-ruleset
* insert resource-ruleset
* obeys bundle-composition-same-id
* identifier.use = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value obeys urn-uuid-invariant
* entry[Patient] 1..
* entry[Practitioner].resource only CHEMEDEPRPractitioner
* entry[PractitionerRole].resource only CHEMEDEPRPractitionerRole
* entry[Patient].resource only CHEMEDEPRPatient
* entry[Organization].resource only CHEMEDEPROrganization
* entry contains ObsBodyWeight 0..1 // Declare the new slice before defining it
* entry[ObsBodyWeight].resource 1..1
* entry[ObsBodyWeight].resource only CHEMEDEPRObservationBodyWeight
* total 0..0
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* entry.link 0..0
* insert modifier(entry.modifierExtension)
* insert no-support(entry.id)
* insert no-support(entry[Encounter])
* insert no-support(entry[Location])
* insert no-support(signature)
* insert no-support(link)
* identifier insert identifier-ruleset
* insert no-support(id)
* insert no-support(language) // Use Composition.language
* entry[Patient] ^short = "The patient targeted by this medication treatment plan"
* entry.fullUrl ^short = "URN-encoded UUID for resource"


// =====================================================================================
// Document MTP
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationTreatmentPlan
Parent: CHEMEDDocumentMedicationTreatmentPlan
Id: ch-emed-epr-document-medicationtreatmentplan
Title: "MTP Document"
Description: "Definition of the bundle for the medication treatment plan document"
* insert document-ruleset
* entry[Composition].resource only CHEMEDEPRCompositionMedicationTreatmentPlan
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatement
* entry[MedicationStatement] 1..
* entry[MedicationStatement] ^short = "Details about the medication introduced in the treatment plan"
// TODO: entry.fullUrl is weird, 0..1 or 1..1 depending on the entry. https://github.com/hl7ch/ch-core/issues/192


// =====================================================================================
// Document PRE
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationPrescription
Parent: CHEMEDDocumentMedicationPrescription
Id: ch-emed-epr-document-medicationprescription
Title: "PRE Document"
Description: "Definition of the bundle for the medication prescription document"
* insert document-ruleset
* entry[Composition].resource only CHEMEDEPRCompositionMedicationPrescription
* entry[MedicationRequest].resource only CHEMEDEPRMedicationRequest
* entry[Binary] 1..


// =====================================================================================
// Document DIS
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationDispense
Parent: CHEMEDDocumentMedicationDispense
Id: ch-emed-epr-document-medicationdispense
Title: "DIS Document"
Description: "Definition of the bundle for the medication dispense document"
* insert document-ruleset
* entry[Composition].resource only CHEMEDEPRCompositionMedicationDispense
* entry[MedicationDispense].resource only CHEMEDEPRMedicationDispense
* entry[MedicationAdministration] 0..0
* insert no-support(entry[MedicationAdministration])
* entry[MedicationDispense] 1..


// =====================================================================================
// Document PADV
// =====================================================================================
Profile: CHEMEDEPRDocumentPharmaceuticalAdvice
Parent: CHEMEDDocumentPharmaceuticalAdvice
Id: ch-emed-epr-document-pharmaceuticaladvice
Title: "PADV Document"
Description: "Definition of the bundle for the pharmaceutical advice document"
* insert document-ruleset
* insert document-with-observations-ruleset
* obeys padv-part-of-same-id
* entry[Composition].resource only CHEMEDEPRCompositionPharmaceuticalAdvice
* entry[Observation].resource only CHEMEDEPRObservation
* entry[Observation] 1..


// =====================================================================================
// Document PML
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationList
Parent: CHEMEDDocumentMedicationList
Id: ch-emed-epr-document-medicationlist
Title: "PML Document"
Description: "Definition of the bundle for the medication list document"
* insert document-ruleset
* insert document-with-observations-ruleset
* entry.fullUrl obeys urn-uuid-invariant
* entry[Composition].resource only CHEMEDEPRCompositionMedicationList
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementList
* entry[MedicationRequest].resource only CHEMEDEPRMedicationRequestList
* entry[MedicationDispense].resource only CHEMEDEPRMedicationDispenseList
* entry[Observation].resource only CHEMEDEPRObservationList
* entry[MedicationAdministration] 0..0
* insert no-support(entry[MedicationAdministration])


// =====================================================================================
// Document PMLC
// =====================================================================================
Profile: CHEMEDEPRDocumentMedicationCard
Parent: CHEMEDDocumentMedicationCard
Id: ch-emed-epr-document-medicationcard
Title: "PMLC Document"
Description: "Definition of the bundle for the medication card document"
* insert document-ruleset
* entry.fullUrl obeys urn-uuid-invariant
* entry[Composition].resource only CHEMEDEPRCompositionMedicationCard
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementCard


// =====================================================================================
// Other RuleSet and invariants
// =====================================================================================
RuleSet: document-with-observations-ruleset
* obeys padv-mtp-same-id
* obeys padv-pre-same-id

Invariant: padv-mtp-same-id
Description: "A changed MedicationStatement SHALL keep the same identifier"
Expression: "(entry.resource.ofType(Observation).extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').select(value as Reference)).all(reference = (resolve() as MedicationStatement).identifier.single().value)"
Severity: #error

Invariant: padv-pre-same-id
Description: "A changed MedicationRequest SHALL keep the same identifier"
Expression: "(entry.resource.ofType(Observation).extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').select(value as Reference)).all(reference = (resolve() as MedicationRequest).identifier.single().value)"
Severity: #error

Invariant: padv-part-of-same-id
Description: "A changed MedicationRequest or MedicationStatement SHALL have the observation's identifier as partOf reference"
Expression: "entry.resource.where($this is MedicationStatement or MedicationRequest).all(partOf.single().resolve().exists() and partOf.single().resolve() is Observation)"
Severity: #error

Invariant: bundle-composition-same-id
Description: "The bundle and the composition resources must have the same identifier."
Expression: "identifier.single() = entry[0].resource.identifier.single()"
Severity: #error
