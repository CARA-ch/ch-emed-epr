RuleSet: medication-statement-ruleset

* insert domain-resource-ruleset

* medicationReference only Reference(CHEMEDEPRMedication)
* reasonCode insert reason-code-ruleset
* reasonCode.coding D
* subject only Reference(CHEMEDEPRPatient)
* basedOn D
* partOf D
* statusReason D // TODO: we may want this
* category D // TODO: we may want this
* context D
* dateAsserted D
* derivedFrom D
* reasonReference D
* identifier insert identifier-ruleset
* subject.id D
* subject.extension D
* medicationCodeableConcept ..0 // medicationReference is required and medication is 1..1
* effective[x] D
* effectivePeriod D
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
// TODO: Disallow effectivePeriod in favor of dosage period?
// TODO: effectiveDateTime is the effective time of the entry?


// =====================================================================================
// Medication Statement MTP
// =====================================================================================
Profile: CHEMEDEPRMedicationStatement
Parent: CHEMEDMedicationStatement
Id: ch-emed-epr-medicationstatement-treatmentplan
Title: "CH EMED EPR MedicationStatement (MTP)"
Description: "Definition of the medication statement for the Medication Treatment Plan document"

* insert medication-statement-ruleset

* extension[substitution].valueCodeableConcept from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert codeableconcept-ruleset
* extension[substitution].id D
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."
// TODO status is only active
// TODO TEST flags
* insert overridden(informationSource)
* informationSource only Reference(CHEMEDEPRPatient or CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRRelatedPerson or CHEMEDEPROrganization)
* effectivePeriod N
* subject D

// =====================================================================================
// Medication Statement PML
// =====================================================================================
Profile: CHEMEDEPRMedicationStatementList
Parent: CHEMEDMedicationStatementList
Id: ch-emed-epr-medicationstatement-list
Title: "CH EMED EPR MedicationStatement (PML)"
Description: "Definition of the medication statement for the medication list document"

* insert medication-statement-ruleset

* extension[substitution].valueCodeableConcept.coding from substance-admin-substitution-code (required)
* extension[substitution].valueCodeableConcept.coding 1..1
* extension[substitution].valueCodeableConcept insert codeableconcept-ruleset
* extension[substitution].id D
* extension[substitution] ^short = "Whether the dispenser can substitute the prescribed medicine/package by another that is deemed equivalent, for medical or logistical reasons. By default, substitution is authorized."
* informationSource only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)


// =====================================================================================
// Medication Statement PMLC
// =====================================================================================
Profile: CHEMEDEPRMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: ch-emed-epr-medicationstatement-card
Title: "CH EMED EPR MedicationStatement (Aggregated)"
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
