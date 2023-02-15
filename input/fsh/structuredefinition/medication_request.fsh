RuleSet: medication-request-ruleset

* insert domain-resource-ruleset

* extension[treatmentplan] 1..1
* medication[x] only Reference
* medicationReference only Reference(CHEMEDEPRMedication)
* substitution.allowedCodeableConcept from ActSubstanceAdminSubstitutionCode (required)
* reasonCode insert reason-code-ruleset
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
* insert no-support(substitution.reason) // TODO we may want this
* insert no-support(priorPrescription)
* insert no-support(detectedIssue)
* insert no-support(eventHistory)
* insert no-support(dispenseRequest.initialFill)
* insert no-support(dispenseRequest.expectedSupplyDuration)
* insert no-support(dispenseRequest.performer)
* insert no-support(substitution.allowedBoolean) // TODO remove 
* dosageInstruction[baseEntry] only CHEMEDEPRDosageMedicationRequest
* dosageInstruction[additionalEntry] only CHEMEDEPRDosageSplitMedicationRequest
* dispenseRequest.initialFill.quantity only CHEMEDEPRAmountQuantity
* dispenseRequest.quantity only CHEMEDEPRAmountQuantity
* doNotPerform ^comment = "Use a PADV CANCEL/SUSPEND/REFUSE instead"
* priorPrescription ^comment = "Use the XDS mechanis to replace a prescription"
* extension[treatmentplan] ^short = "A reference to the MedicationStatement that introduced this medication"
// TODO How to code provisional state?
* dispenseRequest 1..1
* dispenseRequest.validityPeriod 1..1
* dispenseRequest.validityPeriod.start 1..1
* note 0..1
* insert no-support(note.id)
* insert no-support(note.extension)
* insert no-support(note.author[x])
* insert problematic-reference(note.authorReference)
* insert no-support(note.time)
* note ^short = "The annotation text content (as raw text, no markdown allowed)."


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
* requester ^short = "✕ The requester is given in Composition.section.author or Composition.author (see guidance)"
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
* extension[parentDocument] 1..1
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
