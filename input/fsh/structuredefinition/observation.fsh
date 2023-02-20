RuleSet: observation-ruleset

* insert domain-resource-ruleset
* obeys only-one-obs-ref
* obeys mtp-entry-only-with-ref
* obeys pre-entry-only-with-ref
* obeys mtp-ref-conformant
* obeys pre-ref-conformant
* obeys mtp-same-id
* obeys pre-same-id
//* issued 1..1 TODO entry time?
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
* insert no-support(note.id)
* insert no-support(note.extension)
* note.text ^short = "The annotation text content (as raw text, no markdown allowed)."
* insert no-support(note.author[x])
* insert problematic-reference(note.authorReference)
* note.author[x] ^short = "✕ The note author is ignored, as it cannot be different than the observation author"
* insert no-support(note.time)
// TODO check changed entry ID is the same as referenced entry?
* subject only Reference(CHEMEDEPRPatient)
* subject 1..1
* effective[x] only dateTime


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
* performer ^short = "✕ The performer is given in Composition.section.author or Composition.author (see guidance)"


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
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)


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

Invariant: pre-entry-only-with-ref
Description: "A changed MedicationRequest SHALL only be present with a medication request reference, in a PADV CHANGE"
Expression: "(prescription.exists() and medicationRequestChanged.exists() and code = $sct#CHANGE) or medicationRequestChanged.exists().not()"
Severity: #error

Invariant: mtp-ref-conformant
Description: "A changed MedicationStatement SHALL conform to CHEMEDEPRMedicationStatement"
Expression: "treatmentPlan.exists() implies medicationStatementChanged.resolve().conformsTo('https://fhir.cara.ch/StructureDefinition/ch-emed-epr-medicationstatement-treatmentplan')"
Severity: #error

Invariant: pre-ref-conformant
Description: "A changed MedicationRequest SHALL conform to CHEMEDEPRMedicationRequest"
Expression: "prescription.exists() implies medicationRequestChanged.resolve().conformsTo('https://fhir.cara.ch/StructureDefinition/ch-emed-epr-medicationrequest')"
Severity: #error

Invariant: mtp-same-id
Description: "A changed MedicationStatement SHALL keep the same identifier"
Expression: "treatmentPlan.exists() implies medicationStatementChanged.resolve().identifier.values = treatmentPlan.extension[id].valueIdentifier"
Severity: #error

Invariant: pre-same-id
Description: "A changed MedicationRequest SHALL keep the same identifier"
Expression: "prescription.exists() implies medicationRequestChanged.resolve().identifier.values = prescription.extension[id].valueIdentifier"
Severity: #error
