RuleSet: medication-statement-ruleset
* insert domain-resource-ruleset
* reasonCode insert reason-code-ruleset
* subject only Reference(CHEMEDEPRPatient)
* subject ^type.aggregation[+] = #referenced
* subject ^type.aggregation[+] = #bundled
* subject 1..1
* insert no-support(basedOn)
* insert no-support(partOf)
* insert no-support(statusReason) // TODO: we may want this
* insert no-support(category) // TODO: we may want this
* insert no-support(context)
* insert no-support(dateAsserted)
* insert no-support(derivedFrom)
* insert no-support(reasonReference)
* identifier insert identifier-ruleset
* insert no-support(subject.id)
* insert no-support(subject.extension)
* medication[x] only Reference
* medicationReference only Reference(CHEMEDEPRMedication)
* medicationReference ^type.aggregation[+] = #contained
* dosage[baseEntry] only CHEMEDEPRDosage
* dosage[baseEntry] ^type.aggregation[+] = #contained
* dosage[additionalEntry] only CHEMEDEPRDosageSplit
* dosage[additionalEntry] ^type.aggregation[+] = #contained
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(basedOn)
* insert problematic-reference(partOf)
* insert problematic-reference(context)
* insert problematic-reference(derivedFrom)
* insert problematic-reference(reasonReference)
* reasonCode insert reason-code-ruleset
* reasonCode ^short = "The treatment reason(s) as text, and optionally coded"
* reasonCode ^definition = "...Content creators should keep it as simple and short as possible (e.g. 'blood clog', 'hypertension')."
* note.text ^short = "The annotation text content"
* insert no-support(effective[x])
* effective[x] ^short = "✕ Do not use. The effective period is contained in the main dosage"


// =====================================================================================
// Medication Statement MTP
// =====================================================================================
RuleSet: medication-statement-mtp-ruleset
* insert medication-statement-ruleset
* extension[substitution].value[x] only CodeableConcept
* extension[substitution].valueCodeableConcept from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert codeableconcept-ruleset
* insert no-support(extension[substitution].id)
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."
* status = #active
// TODO TEST flags
* insert overridden(informationSource)
* informationSource ^short = "✕ The information source is given in Composition.section.author or Composition.author (see guidance)"
* insert no-support(subject)


Profile: CHEMEDEPRMedicationStatement
Parent: CHEMEDMedicationStatement
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "MTP MedicationStatement"
Description: "Definition of the medication statement for the Medication Treatment Plan document"
* insert medication-statement-mtp-ruleset


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
* insert medication-statement-ruleset
* extension[substitution].valueCodeableConcept.coding from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert codeableconcept-ruleset
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* insert no-support(extension[substitution].id)
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."
* informationSource only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[parentDocument] 1..1
* status = #active


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
* informationSource 1..1
* informationSource ^short = "The last medical author, (see 'Document PMLC' and 'Guidance - Different Authors')"
* informationSource only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* informationSource ^comment = "...It represents the author of the last section (of type _MTP_, _PRE_, or any type of _PADV_ except _COMMENT_ that apply to an _MTP_ or _PRE_) in this treatment."
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[authorDocument] ^short = "The last intervening author, only if different that the last medical author (see 'Document PMLC' and 'Guidance - Different Authors')"
* extension[authorDocument] ^comment = "...It represents the author of the last entry (of any kind) in the treatment. If it's the same author as the last medical author, it's not provided."
* note.author[x] 1..1
* note.author[x] only Reference
* note.authorReference 1..1
* note.time 1..1
// TODO: describe status
* extension contains http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription named prescription 0..1 // Declare the new extension before defining it
* extension[prescription] ^short = "Reference to the PRE that introduced this medication in the treatment plan, if any"

