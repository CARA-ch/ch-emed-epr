RuleSet: main-dosage-ruleset
* insert common-dosage-ruleset
* asNeeded[x] 0..1
* maxDosePerPeriod D
* maxDosePerAdministration D
* maxDosePerLifetime D
* method D
* site D // TODO We may want that
* route ^definition = "...Implementers SHOULD focus on supporting values from the value set 'RouteOfAdministration AMBU'."
* asNeededBoolean ^definition = "...'true' if the medication is 'in reserve'. By default 'true'"


RuleSet: split-dosage-ruleset
* insert common-dosage-ruleset


RuleSet: common-dosage-ruleset
* insert modifier(modifierExtension)
* doseAndRate.doseQuantity only CHEMEDEPRQuantityWithEmedUnits
* insert modifier(timing.modifierExtension)
* doseAndRate.type D
* extension D
* timing.code D // TODO We may want that
* timing.event D


// =====================================================================================
// Dosage MedicationStatement, MedicationDispense
// =====================================================================================
Profile: CHEMEDEPRDosage
Parent: CHEMEDDosage
Id: ch-emed-epr-dosage
Title: "CH EMED EPR Dosage (MedicationStatement / MedicationDispense)"
Description: "Definition of the main dosage element (used in MedicationStatement / MedicationDispense)"

* insert main-dosage-ruleset


// =====================================================================================
// Dosage Split MedicationStatement, MedicationDispense
// =====================================================================================
Profile: CHEMEDEPRDosageSplit
Parent: CHEMEDDosageSplit
Id: ch-emed-epr-dosage-split
Title: "CH EMED EPR Dosage Split (MedicationStatement / MedicationDispense)"
Description: "Definition of the split dosage element (used in MedicationStatement / MedicationDispense)"

* insert split-dosage-ruleset


// =====================================================================================
// Dosage MedicationRequest
// =====================================================================================
Profile: CHEMEDEPRDosageMedicationRequest
Parent: CHEMEDDosageMedicationRequest
Id: ch-emed-epr-dosage-medicationrequest
Title: "CH EMED EPR Dosage (MedicationRequest)"
Description: "Definition of the main dosage element (used in MedicationRequest)"

* insert main-dosage-ruleset


// =====================================================================================
// Dosage Split MedicationRequest
// =====================================================================================
Profile: CHEMEDEPRDosageSplitMedicationRequest
Parent: CHEMEDDosageSplitMedicationRequest
Id: ch-emed-epr-dosage-split-medicationrequest
Title: "CH EMED EPR Dosage Split (MedicationRequest)"
Description: "Definition of the split dosage element (used in MedicationRequest)"

* insert split-dosage-ruleset
