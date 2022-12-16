RuleSet: medication-request-ruleset

* insert domain-resource-ruleset

* extension[treatmentplan] 1..1
* medicationReference only Reference(CHEMEDEPRMedication)
* substitution.allowedCodeableConcept from ActSubstanceAdminSubstitutionCode (required)
* reasonCode insert reason-code-ruleset
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order "Order" // That's a modifier
* insert modifier(doNotPerform)
* statusReason D // TODO we may want this
* category D
* priority D
* reported[x] D
* encounter D
* supportingInformation D
* performer D
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
* dosageInstruction[baseEntry] only CHEMEDEPRDosageMedicationRequest
* dosageInstruction[additionalEntry] only CHEMEDEPRDosageSplitMedicationRequest
* dispenseRequest.initialFill.quantity only CHEMEDEPRAmountQuantity
* dispenseRequest.quantity only CHEMEDEPRAmountQuantity
* doNotPerform ^comment = "Use a PADV CANCEL/SUSPEND/REFUSE instead"
* priorPrescription ^comment = "Use the XDS mechanis to replace a prescription"
* extension[treatmentplan] ^short = "A reference to the MedicationStatement that introduced this medication"
// TODO How to code provisional state?


// =====================================================================================
// Medication Request PRE
// =====================================================================================
Profile: CHEMEDEPRMedicationRequest
Parent: CHEMEDMedicationRequest
Id: ch-emed-epr-medicationrequest
Title: "PRE MedicationRequest"
Description: "Definition of the medication request for the medication prescription document"

* insert medication-request-ruleset
* insert overridden(requester)
* requester only Reference(CHEMEDEPRPatient or CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRRelatedPerson or CHEMEDEPROrganization)
// TODO status is only active


// =====================================================================================
// Medication Request PML
// =====================================================================================
Profile: CHEMEDEPRMedicationRequestList
Parent: CHEMEDMedicationRequestList
Id: ch-emed-epr-medicationrequest-list
Title: "PML MedicationRequest"
Description: "Definition of the medication request for the medication list document"

* insert medication-request-ruleset
* requester only Reference(CHEMEDEPRPractitionerRole)
