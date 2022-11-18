RuleSet: medication-statement-ruleset

* insert domain-resource-ruleset

* medicationReference only Reference(CHEMEDEPRMedication)
* reasonCode insert reason-code-ruleset
* reasonCode.coding D
* subject only Reference(CHCorePatientEPR)
* informationSource only Reference(CHEMEDEPRPractitionerRole)
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
* identifier.assigner ..0
* identifier.assigner ^comment "Problematic for PML creation"
* basedOn ..0
* basedOn ^comment "Problematic for PML creation"
* partOf ..0
* partOf ^comment "Problematic for PML creation"
* context ..0
* context ^comment "Problematic for PML creation"
* derivedFrom ..0
* derivedFrom ^comment "Problematic for PML creation"
* reasonReference ..0
* reasonReference ^comment "Problematic for PML creation"

* reasonCode ^definition = "...Content creators should keep it as simple and short as possible (e.g. 'blood clog', 'hypertension')."

// TODO: Disallow medicationCodeableConcept
// TODO: note?
// TODO: Disallow effectivePeriod in favor of dosage period?
// TODO: effectiveDateTime is the effective time of the entry?
