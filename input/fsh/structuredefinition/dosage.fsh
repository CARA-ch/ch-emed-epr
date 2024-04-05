RuleSet: main-dosage-ruleset
* insert common-dosage-ruleset
* maxDosePerPeriod only CHEMEDEPRRatioAmountPerTime
* maxDosePerAdministration only CHEMEDEPRAmountQuantity
* maxDosePerLifetime only CHEMEDEPRAmountQuantity
* insert no-support(maxDosePerLifetime)
* insert no-support(method)
* insert no-support(site) // TODO We may want that
* asNeeded[x] only boolean
* asNeededBoolean ^definition = "...'true' if the medication is 'in reserve'. By default 'true'."
// todo: additionalInstruction -> http://hl7.org/fhir/R4/valueset-additional-instruction-codes.html
* insert no-support(timing.repeat.id)
* insert no-support(timing.repeat.extension)
* insert no-support(timing.repeat.count)
* insert no-support(timing.repeat.countMax)
* insert no-support(timing.repeat.duration)
* insert no-support(timing.repeat.durationMax)
* insert no-support(timing.repeat.durationUnit)
* insert no-support(timing.repeat.frequency)
* insert no-support(timing.repeat.frequencyMax)
* insert no-support(timing.repeat.period)
* insert no-support(timing.repeat.periodMax)
* insert no-support(timing.repeat.periodUnit)
* insert no-support(timing.repeat.dayOfWeek)
* insert no-support(timing.repeat.timeOfDay)
* insert no-support(timing.repeat.offset)
* insert no-support(timing.id)
* insert no-support(timing.extension)
* additionalInstruction insert codeableconcept-with-text-ruleset
* site insert codeableconcept-with-text-ruleset
* route insert codeableconcept-with-text-ruleset
* route ^definition = "...Implementers SHOULD focus on supporting values from the value set [Route of Administration](ValueSet-ch-emed-epr-route-of-administration.html)."
* method insert codeableconcept-with-text-ruleset
* route.text 1..1 // TODO #16
* site.text 1..1 // TODO #16
* text MS
* text ^short = "Narrative representation of the full dosage (including split dosage elements if they exist) information. SHOULD be provided."
* text ^definition = "Narrative representation of the full dosage information, including any split dosage elements if they exist. The aim is to provide the whole content of the dosage (whether structured or not) in a human readable fashion."
* text ^comment = "This field is expected to be always populated."
* obeys base-dosage-text
* patientInstruction ^definition = "Dosage information as free text in terms that are understood by the patient or consumer. Any information that cannot be provided in a structured way, other than in Dosage.additionalInstruction, SHALL be provided here and, OPTIONALLY, coded in additionalInstruction."
* patientInstruction ^comment = "Any information provided in patientInstruction SHALL be present in Dosage.text and, optionally, in Dosage.additionalInstruction."
* additionalInstruction ^comment = "Any information provided in additionalInstruction SHALL be present in both Dosage.text and Dosage.patientInstruction."


RuleSet: split-dosage-ruleset
* insert common-dosage-ruleset


RuleSet: common-dosage-ruleset
* insert modifier(modifierExtension)
* insert modifier(timing.modifierExtension)
* insert no-support(text)
* insert no-support(doseAndRate.type)
* insert no-support(extension)
* insert no-support(timing.code) // TODO We may want that
* insert no-support(timing.event)
* timing.repeat.when obeys only-standard-event-timings
* timing.repeat.when ^short = "... It shall only contain values from Event Timings"
* doseAndRate.doseQuantity only CHEMEDEPRAmountQuantity
* doseAndRate.doseRange only CHEMEDEPRAmountRange
* doseAndRate.rate[x] only Ratio // Range and quantity not compatible with our units (it would require a UCUM unit of amount per time)
* doseAndRate.rateRatio only CHEMEDEPRRatioAmountPerTime
* timing.repeat.bounds[x] only Period

Invariant: base-dosage-text
Description: "It is a strong recommendation that the base dosage should contain the whole dosage information as narrative, including the information from split dosage elements."
Expression: "text.exists() and text.trim().length() > 0"
Severity: #warning


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
Title: "Dosage Split"
Description: "Definition of the split dosage element"
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
