RuleSet: medication-statement-ruleset
* insert domain-resource-ruleset
* obeys split-dosage-unit-must-match-base-dosage
* reasonCode insert reason-code-ruleset
* subject only Reference(CHEMEDEPRPatient)
* subject ^type.aggregation[+] = #referenced
* subject ^type.aggregation[+] = #bundled
* insert no-support(basedOn)
* insert no-support(statusReason) // TODO: we may want this
* insert no-support(category) // TODO: we may want this
* insert no-support(context)
* insert no-support(derivedFrom)
* insert no-support(reasonReference)
* identifier insert identifier-ruleset
* insert no-support(subject.id)
* insert no-support(subject.extension)
* medication[x] only Reference
* medicationReference only Reference(CHEMEDEPRMedication)
* medicationReference ^type.aggregation[+] = #contained
* dosage[baseEntry] only CHEMEDEPRDosage
* dosage[additionalEntry] only CHEMEDEPRDosageSplit
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(basedOn)
* insert problematic-reference(context)
* insert problematic-reference(derivedFrom)
* insert problematic-reference(reasonReference)
* reasonCode insert reason-code-ruleset
* reasonCode ^short = "The treatment reason(s) as text, and optionally coded"
* reasonCode ^definition = "...Content creators should keep it as simple and short as possible (e.g. 'blood clog', 'hypertension')."
* insert no-support(effective[x])
* effective[x] ^short = "✕ Do not use. The effective period is contained in the main dosage"
* informationSource only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[substitution].valueCodeableConcept from CHEMEDEprActSubstanceAdminSubstitutionCode (required)
* extension[substitution].valueCodeableConcept.coding = $substanceAdminSubstitution#N "none"
* insert no-support(extension[substitution].id)
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."

RuleSet: medication-statement-mtp-ruleset
* insert medication-statement-ruleset
* insert note-ruleset
* status = #active

RuleSet: medication-statement-pml-ruleset
* insert medication-statement-mtp-ruleset
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[parentDocument] 1..1


// =====================================================================================
// Medication Statement MTP
// =====================================================================================
Profile: CHEMEDEPRMedicationStatement
Parent: CHEMEDMedicationStatement
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "MTP MedicationStatement"
Description: "Definition of the medication statement for the Medication Treatment Plan document"
* insert medication-statement-mtp-ruleset
* insert no-support(partOf)
* partOf 0..0

// =====================================================================================
// Changed Medication Statement in a PADV Observation
// =====================================================================================
Profile: CHEMEDEPRChangedMedicationStatement
Parent: CHEMEDMedicationStatementChanged
Id: ch-emed-epr-medicationstatement-changed
Title: "PADV Changed MedicationStatement"
Description: "Definition of the changed medication statement for the pharmaceutical advice document"
* insert medication-statement-mtp-ruleset


// =====================================================================================
// Medication Statement PML
// =====================================================================================
Profile: CHEMEDEPRMedicationStatementList
Parent: CHEMEDMedicationStatementList
Id: ch-emed-epr-medicationstatement-list
Title: "PML MedicationStatement"
Description: "Definition of the medication statement for the medication list document"
* insert medication-statement-pml-ruleset
* partOf 0..0

// =====================================================================================
// Medication Statement Changed PML
// =====================================================================================
Profile: CHEMEDEPRMedicationStatementChangedList
Parent: CHEMEDMedicationStatementChangedList
Id: ch-emed-epr-medicationstatement-changed-list
Title: "PML Changed MedicationStatement"
Description: "Definition of the changed medication statement for the medication list document"
* insert medication-statement-pml-ruleset
* partOf 1..1

// =====================================================================================
// Medication Statement PMLC
// =====================================================================================
Profile: CHEMEDEPRMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: ch-emed-epr-medicationstatement-card
Title: "PMLC MedicationStatement"
Description: "Definition of the aggregated medication statement for the Medication Card document"
* insert medication-statement-ruleset
* extension[treatmentPlan] 1..1
* extension[treatmentPlan] ^short = "Reference to the MTP that introduced this medication in the treatment plan"
* informationSource ^short = "The last medical author, (see 'Document PMLC' and 'Guidance - Different Authors')"
* informationSource ^comment = "...It represents the author of the last section (of type _MTP_, _PRE_, or any type of _PADV_ except _COMMENT_ that apply to an _MTP_ or _PRE_) in this treatment."
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[authorDocument] ^short = "The last intervening author, only if different that the last medical author (see 'Document PMLC' and 'Guidance - Different Authors')"
* extension[authorDocument] ^comment = "...It represents the author of the last entry (of any kind) in the treatment. If it's the same author as the last medical author, it's not provided."
* extension[lastConsideredDocument] 1..1
* insert base-note-ruleset
* note.author[x] 1..1
* note.author[x] only Reference
* note.authorReference 1..1
* note.author[x] ^comment = "...It represents the medical author of the entry that added the comment."
* note.time 1..1
* note.time ^comment = "...It represents the medical author of the entry that added the comment."
* extension contains http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription named prescription 0..1 // Declare the new extension before defining it
* extension[prescription] ^short = "Reference to the PRE that introduced this medication in the treatment plan, if any"
* partOf 0..0
