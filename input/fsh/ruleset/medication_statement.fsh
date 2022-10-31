RuleSet: medication-statement-ruleset

// * status 0..0 SPEC This should be forbidden
* medicationReference only Reference(CHEMEDEPRMedication)
// * effective ??
// * dosage[nonstructured] only ?
// * dosage[structurednormal] only ?
// * dosage[structuredsplit] only ?
* reasonCode insert reason-code-ruleset
* subject only Reference(CHCorePatientEPR)
* informationSource only Reference(CHEMEDEPRPractitionerRole)

// Disable the unused parts
* meta insert meta-ruleset
* implicitRules 0..0
* basedOn 0..0
* partOf 0..0
* statusReason 0..0 // TODO: we may want this
* category 0..0 // TODO: we may want this
* context 0..0
* dateAsserted 0..0
* derivedFrom 0..0
* reasonReference 0..0
* identifier insert identifier-ruleset
* modifierExtension 0..0
* subject.id 0..0
* subject.extension 0..0
* effectiveDateTime 0..0 // Use the period instead
* medicationCodeableConcept 0..0

// Restrictions
* effective[x] 1..1
* effectivePeriod 1..1

* reasonCode ^definition = "Authors should keep it as simple and short as possible (e.g. 'blood clog', 'hypertension')."

// TODO: Disallow medicationCodeableConcept
// TODO: note?