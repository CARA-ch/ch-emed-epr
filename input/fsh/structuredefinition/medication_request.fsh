RuleSet: medication-request-ruleset
* insert domain-resource-ruleset
* extension[treatmentplan] 1..1
* medication[x] only Reference
* medicationReference only Reference(CHEMEDEPRMedication)
* medicationReference ^type.aggregation[+] = #contained
* subject only Reference(CHEMEDEPRPatient)
* subject ^type.aggregation[+] = #referenced
* subject ^type.aggregation[+] = #bundled
* subject 1..1
* reasonCode insert reason-code-ruleset
* reasonCode ^short = "The treatment reason(s) as text, and optionally coded"
* reasonCode ^definition = "...Content creators should keep it as simple and short as possible (e.g. 'blood clog', 'hypertension')."
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order "Order" // That's a modifier
* insert modifier(doNotPerform)
* insert no-support(statusReason) // TODO we may want this
* insert no-support(category)
* insert no-support(priority)
* insert no-support(reported[x])
* insert no-support(encounter)
* insert no-support(supportingInformation)
* insert no-support(performer)
* insert no-support(performerType)
* insert no-support(reasonReference)
* insert no-support(instantiatesCanonical)
* insert no-support(instantiatesUri)
* insert no-support(basedOn)
* insert no-support(groupIdentifier)
* insert no-support(courseOfTherapyType)
* insert no-support(insurance)
* insert no-support(priorPrescription)
* insert no-support(detectedIssue)
* insert no-support(eventHistory)
* insert no-support(dispenseRequest.initialFill)
* insert no-support(dispenseRequest.expectedSupplyDuration)
* insert no-support(dispenseRequest.performer)
* dispenseRequest.initialFill.quantity only CHEMEDEPRAmountQuantity
* dispenseRequest.quantity only CHEMEDEPRAmountQuantity
* doNotPerform ^comment = "Use a PADV CANCEL/SUSPEND/REFUSE instead"
* priorPrescription ^comment = "Use the XDS mechanism to replace a prescription"
* extension[treatmentplan] ^short = "A reference to the MedicationStatement that introduced this medication"
// TODO How to code provisional state?
* note.text ^short = "The annotation text content"
* dosageInstruction[baseEntry] only CHEMEDEPRDosageMedicationRequest
* dosageInstruction[additionalEntry] only CHEMEDEPRDosageSplit
* dispenseRequest 1..1
* dispenseRequest insert backbone-ruleset
* dispenseRequest.initialFill insert backbone-ruleset
* dispenseRequest.validityPeriod 1..1
* dispenseRequest.validityPeriod.start 1..1
* substitution insert backbone-ruleset
* substitution.allowed[x] only CodeableConcept
* substitution.allowedCodeableConcept from ActSubstanceAdminSubstitutionCode (required)
* insert no-support(substitution.reason) // TODO we may want this

// =====================================================================================
// Medication Request PRE
// =====================================================================================
RuleSet: medication-request-pre-ruleset
* insert medication-request-ruleset
* insert overridden(requester)
* status = #active


Profile: CHEMEDEPRMedicationRequest
Parent: CHEMEDMedicationRequest
Id: ch-emed-epr-medicationrequest
Title: "PRE MedicationRequest"
Description: "Definition of the medication request for the medication prescription document"
* insert medication-request-pre-ruleset


// =====================================================================================
// Changed Medication Request in a PADV Observation
// =====================================================================================
Profile: CHEMEDEPRChangedMedicationRequest
Parent: CHEMEDMedicationRequestChanged
Id: ch-emed-epr-medicationrequest-changed
Title: "PADV Changed MedicationRequest"
Description: "Definition of the changed medication request for the pharmaceutical advice document"
* insert medication-request-pre-ruleset


// =====================================================================================
// Medication Request PML
// =====================================================================================
Profile: CHEMEDEPRMedicationRequestList
Parent: CHEMEDMedicationRequestList
Id: ch-emed-epr-medicationrequest-list
Title: "PML MedicationRequest"
Description: "Definition of the medication request for the medication list document"
* insert medication-request-ruleset
* extension[parentDocument] 1..1
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
// TODO: describe status
