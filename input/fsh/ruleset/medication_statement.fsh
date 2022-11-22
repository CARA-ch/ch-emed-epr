RuleSet: medication-statement-ruleset

* insert domain-resource-ruleset

* medicationReference only Reference(CHEMEDEPRMedication)
* reasonCode insert reason-code-ruleset
* reasonCode.coding D
* subject only Reference(CHEMEDEPRPatient)
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
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(basedOn)
* insert problematic-reference(partOf)
* insert problematic-reference(context)
* insert problematic-reference(derivedFrom)
* insert problematic-reference(reasonReference)
* insert problematic-reference(note.authorReference)

* reasonCode ^definition = "...Content creators should keep it as simple and short as possible (e.g. 'blood clog', 'hypertension')."

// TODO: Disallow medicationCodeableConcept
// TODO: note?
// TODO: Disallow effectivePeriod in favor of dosage period?
// TODO: effectiveDateTime is the effective time of the entry?
