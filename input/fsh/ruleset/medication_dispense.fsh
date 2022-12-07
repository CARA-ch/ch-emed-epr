RuleSet: medication-dispense-ruleset

* insert domain-resource-ruleset

* extension[treatmentPlan] 1..1
* medicationReference only Reference(CHEMEDEPRMedicationMedicationDispense)
* authorizingPrescription D
* whenHandedOver 1..1
* partOf D
* statusReason[x] D
* category D
* context D
* supportingInformation D
* location D
* type D // TODO ?
* daysSupply D
* whenPrepared D
* destination D
* receiver D // It's the subject
* substitution.responsibleParty D // It's the performer
* extension[pharmaceuticalAdvice] D
* extension[prescription] D // Use authorizingPrescription?
* substitution.type D // TODO: it should be optional
* extension[pharmaceuticalAdvice] D
* quantity insert amount-quantity-ruleset
* daysSupply insert time-quantity-ruleset
