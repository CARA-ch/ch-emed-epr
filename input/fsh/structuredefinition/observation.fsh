RuleSet: observation-base-ruleset
* insert domain-resource-ruleset
* obeys only-one-obs-ref
* obeys mtp-entry-only-with-ref
* obeys pre-entry-only-with-ref
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
* insert note-ruleset
* subject only Reference(CHEMEDEPRPatient)
* subject ^type.aggregation[+] = #referenced
* subject ^type.aggregation[+] = #bundled
//* subject 1..1  // TODO #16

RuleSet: observation-ruleset
* insert observation-base-ruleset
* obeys treatment-plan-id-reference-matches-statement-changed-reference
* obeys prescription-id-reference-matches-request-changed-reference
* extension[medicationStatementChanged].valueReference only Reference(CHEMEDEPRChangedMedicationStatement)
* extension[medicationRequestChanged].valueReference only Reference(CHEMEDEPRChangedMedicationRequest)

// =====================================================================================
// Observation PADV
// =====================================================================================
Profile: CHEMEDEPRObservation
Parent: CHEMEDObservation
Id: ch-emed-epr-observation
Title: "PADV Observation"
Description: "Definition of the observation for the pharmaceutical advice document"
* insert observation-ruleset
* insert no-support(effective[x])


// =====================================================================================
// Observation PML
// =====================================================================================
Profile: CHEMEDEPRObservationList
Parent: CHEMEDObservationList
Id: ch-emed-epr-observation-list
Title: "PML Observation"
Description: "Definition of the observation for the medication list document"
* insert observation-base-ruleset
* extension[parentDocument] 1..1
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[medicationStatementChanged].valueReference only Reference(CHEMEDEPRMedicationStatementChangedList)
* extension[medicationRequestChanged].valueReference only Reference(CHEMEDEPRMedicationRequestChangedList)

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
Expression: "(extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan').exists() and extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').exists() and code.coding.single().code = 'CHANGE') or extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').exists().not()"
Severity: #error

Invariant: pre-entry-only-with-ref
Description: "A changed MedicationRequest SHALL only be present with a medication request reference, in a PADV CHANGE"
Expression: "(extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription').exists() and extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists() and code.coding.single().code = 'CHANGE') or extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists().not()"
Severity: #error

Invariant: treatment-plan-id-reference-matches-statement-changed-reference
Description: "If the observation includes a medication statement changed reference, it SHALL match the treatment plan id reference"
Expression: "extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').exists() implies (extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed').single().value as Reference).reference = (extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan').extension('id').single().value as Identifier).value"
Severity: #error

Invariant: prescription-id-reference-matches-request-changed-reference
Description: "If the observation includes a medication request changed reference, it SHALL match the prescription id reference"
Expression: "extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists() implies (extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').single().value as Reference).reference = (extension('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription').extension('id').single().value as Identifier).value"
Severity: #error
