RuleSet: main-dosage-ruleset
* insert common-dosage-ruleset
* maxDosePerPeriod only CHEMEDEPRRatioAmountPerTime
* maxDosePerAdministration only CHEMEDEPRAmountQuantity
* maxDosePerLifetime only CHEMEDEPRAmountQuantity
* maxDosePerLifetime D
* method D
* site D // TODO We may want that
* route ^definition = "...Implementers SHOULD focus on supporting values from the value set [Route of Administration](ValueSet-ch-emed-epr-route-of-administration.html)."
* asNeededBoolean ^definition = "...'true' if the medication is 'in reserve'. By default 'true'."
// todo: additionalInstruction -> http://hl7.org/fhir/R4/valueset-additional-instruction-codes.html


RuleSet: split-dosage-ruleset
* insert common-dosage-ruleset


RuleSet: common-dosage-ruleset
* insert modifier(modifierExtension)
* insert modifier(timing.modifierExtension)
* doseAndRate.type D
* extension D
* timing.code D // TODO We may want that
* timing.event D
* timing.repeat.when obeys only-standard-event-timings
* timing.repeat.when ^short = "... It shall only contain values from [Event Timings](ValueSet-event-timing-cara.html)."
* doseAndRate.doseQuantity only CHEMEDEPRAmountQuantity
* doseAndRate.doseRange only CHEMEDEPRAmountRange
* doseAndRate.rateQuantity 0..0 // Not compatible with our units (it would require a UCUM unit of amount per time)
* doseAndRate.rateRange 0..0 // Not compatible with our units (it would require a UCUM unit of amount per time)
* doseAndRate.rateRatio only CHEMEDEPRRatioAmountPerTime
* route.text 1..1
* site.text 1..1


Invariant: only-standard-event-timings
Description: "The timing event shall only be 'MORN', 'NOON', 'EVE' or 'NIGHT'."
Expression: "$this = 'MORN' or $this = 'NOON' or $this = 'EVE' or $this = 'NIGHT'"
Severity: #error

// =====================================================================================
// Dosage MedicationStatement, MedicationDispense
// =====================================================================================
Profile: CHEMEDEPRDosage
Parent: CHEMEDDosage
Id: ch-emed-epr-dosage
Title: "Dosage (MedicationStatement / MedicationDispense)"
Description: "Definition of the main dosage element (used in MedicationStatement / MedicationDispense)"

* insert main-dosage-ruleset

// todo: Period: Either the start or end instants shall be specified
// todo: Period: The time interval lower bound is after the higher bound
// todo: When: A code cannot appear in multiple dosages
// todo: If no intake is given, the instructions shall be filled


// =====================================================================================
// Dosage Split MedicationStatement, MedicationDispense
// =====================================================================================
Profile: CHEMEDEPRDosageSplit
Parent: CHEMEDDosageSplit
Id: ch-emed-epr-dosage-split
Title: "Dosage Split (MedicationStatement / MedicationDispense)"
Description: "Definition of the split dosage element (used in MedicationStatement / MedicationDispense)"

* insert split-dosage-ruleset


// =====================================================================================
// Dosage MedicationRequest
// =====================================================================================
Profile: CHEMEDEPRDosageMedicationRequest
Parent: CHEMEDDosageMedicationRequest
Id: ch-emed-epr-dosage-medicationrequest
Title: "Dosage (MedicationRequest)"
Description: "Definition of the main dosage element (used in MedicationRequest)"

* insert main-dosage-ruleset


// =====================================================================================
// Dosage Split MedicationRequest
// =====================================================================================
Profile: CHEMEDEPRDosageSplitMedicationRequest
Parent: CHEMEDDosageSplitMedicationRequest
Id: ch-emed-epr-dosage-split-medicationrequest
Title: "Dosage Split (MedicationRequest)"
Description: "Definition of the split dosage element (used in MedicationRequest)"

* insert split-dosage-ruleset
