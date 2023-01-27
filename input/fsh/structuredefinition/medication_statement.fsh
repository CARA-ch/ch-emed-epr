RuleSet: medication-statement-ruleset

* insert domain-resource-ruleset

* medicationReference only Reference(CHEMEDEPRMedication)
* reasonCode insert reason-code-ruleset
* insert no-support(reasonCode.coding)
* subject only Reference(CHEMEDEPRPatient)
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
* medicationCodeableConcept ..0 // medicationReference is required and medication is 1..1
* insert no-support(effectivePeriod)
* effectivePeriod 0..0
* dosage[baseEntry] only CHEMEDEPRDosage
* dosage[additionalEntry] only CHEMEDEPRDosageSplit
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(basedOn)
* insert problematic-reference(partOf)
* insert problematic-reference(context)
* insert problematic-reference(derivedFrom)
* insert problematic-reference(reasonReference)
* reasonCode ^definition = "...Content creators should keep it as simple and short as possible (e.g. 'blood clog', 'hypertension')."
// TODO: Disallow medicationCodeableConcept
// TODO: note?
// TODO: effectiveDateTime is the effective time of the entry?


// =====================================================================================
// Medication Statement MTP
// =====================================================================================
Profile: CHEMEDEPRMedicationStatement
Parent: CHEMEDMedicationStatement
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "MTP MedicationStatement"
Description: "Definition of the medication statement for the Medication Treatment Plan document"

* insert medication-statement-ruleset

* extension[substitution].valueCodeableConcept from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert codeableconcept-ruleset
* insert no-support(extension[substitution].id)
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."
// TODO status is only active
// TODO TEST flags
* insert overridden(informationSource)
* informationSource ^short = "✕ The information source is given in Composition.section.author or Composition.author (see guidance)"
* insert no-support(subject)

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
* insert no-support(extension[substitution].id)
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."
* informationSource only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* extension[parentDocument] 1..1


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
//* extension[authorDocument] only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient) // TODO fix me
* informationSource 1..1
* informationSource ^short = "The last medical author, (see 'Document PMLC' and 'Guidance - Different Authors')"
* informationSource only Reference(CHEMEDEPRPractitionerRole)
* informationSource ^comment = "...It represents the author of the last section (of type _MTP_, _PRE_, or any type of _PADV_ except _COMMENT_ that apply to an _MTP_ or _PRE_) in this treatment."
* extension[authorDocument] ^short = "The last intervening author, only if different that the last medical author (see 'Document PMLC' and 'Guidance - Different Authors')"
* extension[authorDocument] ^comment = "...It represents the author of the last entry (of any kind) in the treatment. If it's the same author as the last medical author, it's not provided."
