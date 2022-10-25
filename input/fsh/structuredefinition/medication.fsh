Profile: CHEMEDEPRMedication
Parent: CHEMEDMedication
Id: ch-emed-epr-medication
Title: "CH EMED EPR Medication"
Description: "Definition of the medication"

// Upstream
* code.coding                       contains ATC 0..1 MS
* code.coding[GTIN]                 MS
* code.coding[ATC]                  only Coding
* code.coding[ATC]                  ^short = "Code of the medication (ATC)"
* code.coding[ATC].system           = "urn:oid:2.16.840.1.113883.6.73" 
* code.coding[ATC].system           1..1 
* code.coding[ATC].system           ^short = "ATC"
* code.coding[ATC].code             1..1
* code.coding[ATC].display          1..1
* manufacturer                      only Reference(CHCoreOrganizationEPR)

// Restrictions
* status                            = http://hl7.org/fhir/CodeSystem/medication-status#active "Active"
* form.coding                       1..1
* code                              1..1
* code.coding                       1..1
* code.coding[GTIN]                 0..1
// * amount.denominator 0..0 TODO 
* ingredient.itemCodeableConcept.coding 1..1

// Disable the unused parts
* meta                              insert NoMetaExceptProfile
* implicitRules                     0..0
* code.id                           0..0
* code.coding[GTIN]                 insert SimpleCoding
* code.coding[ATC]                  insert SimpleCoding
* form                              insert SimpleCodeableConcept
* form.coding                       insert SimpleCoding
* batch.id                          0..0
* batch.extension                   0..0
* batch.modifierExtension           0..0
* extension                         0..0
* modifierExtension                 0..0
* code.extension                    0..0
* form.extension                    0..0
* ingredient.id                     0..0
* ingredient.extension              0..0
* ingredient.modifierExtension      0..0
* ingredient.itemCodeableConcept.id 0..0
* ingredient.itemCodeableConcept.extension 0..0
//* identifier TODO

// Documentation
