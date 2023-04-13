// =====================================================================================
// Observation Body Weight
// =====================================================================================
Profile: CHEMEDEPRObservationBodyWeight
Parent: Observation
Id: ch-emed-epr-observation-body-weight
Title: "Body Weight Observation"
Description: "Definition of the observation for the patient body weight, following the FHIR Vital Signs profile (https://www.hl7.org/fhir/R4/bodyweight.html)."
* insert domain-resource-ruleset
* code = $lnc#29463-7
* subject 1..1
* subject only Reference(CHEMEDEPRPatient)
* effectiveDateTime 1..1
* valueQuantity only SimpleQuantity
* valueQuantity 1..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "The patient body weight in kg"
* valueQuantity.unit = "kg"
* valueQuantity.unit 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.system 1..1
* valueQuantity.code = #kg
* valueQuantity.code 1..1
* insert modifier(referenceRange.modifierExtension)
* insert modifier(component.modifierExtension)