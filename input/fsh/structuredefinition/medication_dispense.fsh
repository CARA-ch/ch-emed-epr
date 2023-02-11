RuleSet: medication-dispense-ruleset

* insert domain-resource-ruleset

* extension[treatmentPlan] 1..1
* medication[x] only Reference
* medicationReference only Reference(CHEMEDEPRMedicationMedicationDispense)
* insert no-support(authorizingPrescription)
* whenHandedOver 1..1
* insert no-support(partOf)
* insert no-support(statusReason[x])
* insert no-support(category)
* insert no-support(context)
* insert no-support(supportingInformation)
* insert no-support(location)
* insert no-support(type) // TODO ?
* insert no-support(daysSupply)
* insert no-support(whenPrepared)
* insert no-support(destination)
* insert no-support(receiver) // It's the subject
* insert no-support(substitution.responsibleParty) // It's the performer
* insert no-support(extension[pharmaceuticalAdvice])
* insert no-support(extension[prescription]) // Use authorizingPrescription?
* insert no-support(substitution.type) // TODO: it should be optional
* insert no-support(extension[pharmaceuticalAdvice])
* quantity only CHEMEDEPRAmountQuantity
* daysSupply only CHEMEDEPRTimeQuantity
* dosageInstruction[baseEntry] only CHEMEDEPRDosage
* dosageInstruction[additionalEntry] only CHEMEDEPRDosageSplit


// =====================================================================================
// Medication Dispense DIS
// =====================================================================================
Profile: CHEMEDEPRMedicationDispense
Parent: CHEMEDMedicationDispense
Id: ch-emed-epr-medicationdispense
Title: "DIS MedicationDispense"
Description: "Definition of the medication dispense for the medication dispense document"

* insert medication-dispense-ruleset
* insert overridden(performer)
* performer ^short = "✕ The performer is given in Composition.section.author or Composition.author (see guidance)"

// =====================================================================================
// Medication Dispense PML
// =====================================================================================
Profile: CHEMEDEPRMedicationDispenseList
Parent: CHEMEDMedicationDispenseList
Id: ch-emed-epr-medicationdispense-list
Title: "PML MedicationDispense"
Description: "Definition of the medication dispense for the medication list document"

* insert medication-dispense-ruleset
* performer.actor only Reference(CHEMEDEPRPractitionerRole)
* extension[parentDocument] 1..1
