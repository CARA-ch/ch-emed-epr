RuleSet: medication-request-ruleset

* insert domain-resource-ruleset

* extension[treatmentplan] 1..1
* medicationReference only Reference(CHEMEDEPRMedication)
* substitution.allowedCodeableConcept from ActSubstanceAdminSubstitutionCode (required)
* reasonCode insert reason-code-ruleset
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order "Order" // That's a modifier
* doNotPerform 0..0 // Thant's a modifier
* statusReason D // TODO we may want this
* category D
* priority D
* reported[x] D
* encounter D
* supportingInformation D
* requester D
* performerType D
* reasonReference D
* instantiatesCanonical D
* instantiatesUri D
* basedOn D
* groupIdentifier D
* courseOfTherapyType D
* insurance D
* substitution.reason D // TODO we may want this
* priorPrescription D
* detectedIssue D
* eventHistory D
* dispenseRequest.initialFill D
* dispenseRequest.expectedSupplyDuration D
* dispenseRequest.performer D
* substitution.allowedBoolean D // TODO remove 

* doNotPerform ^comment = "Use a PADV CANCEL/SUSPEND/REFUSE instead"
* priorPrescription ^comment = "Use the XDS mechanis to replace a prescription"
* extension[treatmentplan] ^short = "A reference to the MedicationStatement that introduced this medication"