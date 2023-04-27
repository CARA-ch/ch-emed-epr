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
* subject only Reference(CHEMEDEPRPatient)
* subject ^type.aggregation[+] = #referenced
* subject ^type.aggregation[+] = #bundled
//* subject 1..1  // TODO #16


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
* insert no-support(effective[x])


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
Expression: "(extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan').exists() xor extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription').exists() xor extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-dispense').exists()) and (extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan').exists() and extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription').exists() and extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-dispense').exists()).not()"
// A xor B xor C is true if and only if one or three of (A,B,C) are true
Severity: #error

Invariant: mtp-entry-only-with-ref
Description: "A changed MedicationStatement SHALL only be present with a medication treatment plan reference, in a PADV CHANGE"
Expression: "(extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan').exists() and extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').exists() and code.coding.code = 'CHANGE') or extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').exists().not()"
Severity: #error

Invariant: pre-entry-only-with-ref
Description: "A changed MedicationRequest SHALL only be present with a medication request reference, in a PADV CHANGE"
Expression: "(extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription').exists() and extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists() and code.coding.code = 'CHANGE') or extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists().not()"
Severity: #error

Invariant: mtp-ref-conformant
Description: "A changed MedicationStatement SHALL conform to CHEMEDEPRChangedMedicationStatement"
Expression: "extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').exists() implies extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').valueReference.resolve().conformsTo('https://fhir.cara.ch/StructureDefinition/ch-emed-epr-medicationstatement-changed')"
Severity: #error

Invariant: pre-ref-conformant
Description: "A changed MedicationRequest SHALL conform to CHEMEDEPRChangedMedicationRequest"
Expression: "extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists() implies extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').valueReference.resolve().conformsTo('https://fhir.cara.ch/StructureDefinition/ch-emed-epr-medicationrequest-changed')"
Severity: #error

Invariant: mtp-same-id
Description: "A changed MedicationStatement SHALL keep the same identifier"
Expression: "extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').exists() implies extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').valueReference.resolve().identifier.where(system='urn:ietf:rfc:3986').value = extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan').extension.where(url='id').valueIdentifier.value"
Severity: #error

Invariant: pre-same-id
Description: "A changed MedicationRequest SHALL keep the same identifier"
Expression: "extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists() implies extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').valueReference.resolve().identifier.where(system='urn:ietf:rfc:3986').value = extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription').extension.where(url='id').valueIdentifier.value"
Severity: #error
