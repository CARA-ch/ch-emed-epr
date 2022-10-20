Profile: CHEMEDEPRMedication
Parent: CHEMEDMedication
Id: ch-emed-epr-medication
Title: "Medication"
Description: "Definition of the medication"

// Upstream
* status = http://hl7.org/fhir/CodeSystem/medication-status#active "Active"
/** code.coding contains GTIN AND ATC
* code.coding[ATC] only Coding
* code.coding[ATC].system = "urn:oid:2.16.840.1.113883.6.73" 
* code.coding[ATC].system 1..1 
* code.coding[ATC].system ^short = "ATC"
* code.coding[ATC].code 1..1
* code.coding[ATC].display 1..1*/
// * amount.denominator 0..0 TODO 

// Disable the unused parts
* meta              0..0
* implicitRules     0..0