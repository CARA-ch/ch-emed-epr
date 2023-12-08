RuleSet: medication-dispense-ruleset
* insert domain-resource-ruleset
* insert note-ruleset
* extension[treatmentPlan] 1..1
* medication[x] only Reference
* medicationReference only Reference(CHEMEDEPRMedicationMedicationDispense)
* medicationReference ^type.aggregation[+] = #contained
* insert no-support(authorizingPrescription)
* insert no-support(partOf)
* insert no-support(category)
* insert no-support(context)
* insert no-support(supportingInformation)
* insert no-support(location)
* insert no-support(type) // TODO ?
* insert no-support(daysSupply)
* insert no-support(whenPrepared)
* insert no-support(destination)
* insert no-support(receiver) // It's the subject
* insert no-support(substitution.reason)
//* substitution BackboneElement
* insert no-support(extension[pharmaceuticalAdvice])
//* insert no-support(extension[prescription]) // Use authorizingPrescription?
* extension[prescription] ^short = "Reference to te medication prescription. This item is mandantory if the treatment has already been prescribed."
* quantity only CHEMEDEPRAmountQuantity
* daysSupply only CHEMEDEPRTimeQuantity
* dosageInstruction[baseEntry] only CHEMEDEPRDosage
* dosageInstruction[additionalEntry] only CHEMEDEPRDosageSplit
* subject only Reference(CHEMEDEPRPatient)
* subject ^type.aggregation[+] = #referenced
* subject ^type.aggregation[+] = #bundled
//* subject 1..1 // TODO #16
//* statusReason[x] 0..0 // TODO #16
* insert no-support(statusReason[x])
* statusReason[x] ^short = "✕ This is only meaningful when the dispense was not performed"
* substitution insert backbone-ruleset
* insert no-support(substitution.responsibleParty) // It's the performer
* insert no-support(detectedIssue)
* insert no-support(eventHistory)
* performer insert backbone-ruleset


// =====================================================================================
// Medication Dispense DIS
// =====================================================================================
Profile: CHEMEDEPRMedicationDispense
Parent: CHEMEDMedicationDispense
Id: ch-emed-epr-medicationdispense
Title: "DIS MedicationDispense"
Description: "Definition of the medication dispense for the medication dispense document"
* insert medication-dispense-ruleset


// =====================================================================================
// Medication Dispense PML
// =====================================================================================
Profile: CHEMEDEPRMedicationDispenseList
Parent: CHEMEDMedicationDispenseList
Id: ch-emed-epr-medicationdispense-list
Title: "PML MedicationDispense"
Description: "Definition of the medication dispense for the medication list document"
* insert medication-dispense-ruleset
* extension[parentDocument] 1..1
* extension[authorDocument].valueReference only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
