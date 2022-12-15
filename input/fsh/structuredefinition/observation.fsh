RuleSet: observation-ruleset

* insert domain-resource-ruleset
* obeys only-one-obs-ref
* obeys mtp-entry-only-with-ref
// TODO medicationStatementChanged ?
* issued 1..1
* basedOn D
* partOf D
* category D
* focus D
* encounter D
* value[x] D
* dataAbsentReason D
* interpretation D
* bodySite D
* method D
* specimen D
* device D
* referenceRange D
* hasMember D
* derivedFrom D
* component D
* note.text ^short = "The annotation text content (as raw text, no markdown allowed)."
// TODO pre-entry-with-ref
// TODO dis-entry-with-ref
// TODO check changed entry ID is the same as referenced entry?


// =====================================================================================
// Observation PADV
// =====================================================================================
Profile: CHEMEDEPRObservation
Parent: CHEMEDObservation
Id: ch-emed-epr-observation
Title: "Observation (PADV)"
Description: "Definition of the observation for the pharmaceutical advice document"

* insert observation-ruleset
* insert overridden(performer)
* performer only Reference(CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPROrganization or CHEMEDEPRRelatedPerson)


// =====================================================================================
// Observation PML
// =====================================================================================
Profile: CHEMEDEPRObservationList
Parent: CHEMEDObservationList
Id: ch-emed-epr-observation-list
Title: "Observation (PML)"
Description: "Definition of the observation for the medication list document"

* insert observation-ruleset
* performer only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)


// =====================================================================================
// Invariants
// =====================================================================================
Invariant: only-one-obs-ref
Description: "A single reference (to either a medication treatment plan, prescription or dispense) SHALL be present"
Expression: "(treatmentPlan.exists() and prescription.exists().not() and dispense.exists().not()) or (treatmentPlan.exists().not() and prescription.exists() and dispense.exists().not()) or (treatmentPlan.exists().not() and prescription.exists().not() and dispense.exists())"
Severity: #error

Invariant: mtp-entry-only-with-ref
Description: "A changed MedicationStatement SHALL only be present with a medication treatment plan reference, in a PADV CHANGE"
Expression: "(treatmentPlan.exists() and medicationStatementChanged.exists() and code = $sct#CHANGE) or medicationStatementChanged.exists().not()"
Severity: #error
