RuleSet: medication-request-ruleset

// Restrictions
* extension[treatmentplan] 1..1
* medicationReference only Reference(CHEMEDEPRMedication)
* substitution.allowedCodeableConcept from ActSubstanceAdminSubstitutionCode (required)
* reasonCode insert reason-code-ruleset

* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order "Order" // That's a modifier
* doNotPerform 0..0 // Thant's a modifier; use PADV CANCEL/SUSPEND/REFUSE instead

// Disable unused parts
* meta insert meta-ruleset
* implicitRules 0..0
* statusReason 0..0 // TODO we may want this
* category 0..0
* priority 0..0
* reported[x] 0..0
* encounter 0..0
* supportingInformation 0..0
* requester 0..0
* performerType 0..0
* reasonReference 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* groupIdentifier 0..0
* courseOfTherapyType 0..0
* insurance 0..0
* substitution.reason 0..0 // TODO we may want this
* priorPrescription 0..0 // Use the XDS mechanism
* detectedIssue 0..0
* eventHistory 0..0
* dispenseRequest.initialFill 0..0
* dispenseRequest.expectedSupplyDuration 0..0
* dispenseRequest.performer 0..0
* modifierExtension 0..0
* substitution.allowedBoolean 0..0 // TODO remove 