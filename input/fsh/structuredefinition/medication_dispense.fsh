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
Title: "MedicationDispense (DIS)"
Description: "Definition of the medication dispense for the medication dispense document"

* insert medication-dispense-ruleset
* insert overridden(performer.actor)
* performer.actor only Reference(CHEMEDEPRPatient or CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRRelatedPerson or CHEMEDEPROrganization)


// =====================================================================================
// Medication Dispense PML
// =====================================================================================
Profile: CHEMEDEPRMedicationDispenseList
Parent: CHEMEDMedicationDispenseList
Id: ch-emed-epr-medicationdispense-list
Title: "MedicationDispense (PML)"
Description: "Definition of the medication dispense for the medication list document"

* insert medication-dispense-ruleset
* performer.actor only Reference(CHEMEDEPRPractitionerRole)
