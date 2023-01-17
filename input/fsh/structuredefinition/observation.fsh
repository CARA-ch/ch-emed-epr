RuleSet: observation-ruleset

* insert domain-resource-ruleset
* obeys only-one-obs-ref
* obeys mtp-entry-only-with-ref
// TODO medicationStatementChanged ?
* issued 1..1
* insert no-support(basedOn)
* insert no-support(partOf)
* insert no-support(category)
* insert no-support(focus)
* insert no-support(encounter)
* insert no-support(value[x])
* insert no-support(dataAbsentReason)
* insert no-support(interpretation)
* insert no-support(bodySite)
* insert no-support(method)
* insert no-support(specimen)
* insert no-support(device)
* insert no-support(referenceRange)
* insert no-support(hasMember)
* insert no-support(derivedFrom)
* insert no-support(component)
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
Title: "PADV Observation"
Description: "Definition of the observation for the pharmaceutical advice document"

* insert observation-ruleset
* insert overridden(performer)
* performer only Reference(CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPROrganization or CHEMEDEPRRelatedPerson)
* insert no-support(note.author[x])
* note.author[x] ^short = "✕ The note author is ignored, as it cannot be different than the observation author"
* insert no-support(note.time)


// =====================================================================================
// Observation PML
// =====================================================================================
Profile: CHEMEDEPRObservationList
Parent: CHEMEDObservationList
Id: ch-emed-epr-observation-list
Title: "PML Observation"
Description: "Definition of the observation for the medication list document"

* insert observation-ruleset
* performer only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[parentDocument] 1..1


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
