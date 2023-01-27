RuleSet: medication-ruleset

* insert domain-resource-ruleset

* manufacturer only Reference(CHEMEDEPROrganization)
* status = http://hl7.org/fhir/CodeSystem/medication-status#active "Active"
* form.coding 1..1
* code 1..1
* code ^short = "Codes that identify this medication. If the GTIN is known, please specify it."
* code.coding 0..*
* code.coding[GTIN] 0..1
* code.coding[ATC] 0..1
* ingredient.itemCodeableConcept.coding 1..1
* insert no-support(code.id)
* code.coding[GTIN] insert coding-ruleset
* code.coding[ATC] insert coding-ruleset
* form insert codeableconcept-ruleset
* form.coding insert coding-ruleset
* insert no-support(batch.id)
* insert no-support(batch.extension)
* insert modifier(batch.modifierExtension)
* insert no-support(extension)
* insert no-support(code.extension)
* insert no-support(form.extension)
* insert no-support(ingredient.id)
* insert no-support(ingredient.extension)
* insert modifier(ingredient.modifierExtension)
* insert no-support(ingredient.itemCodeableConcept.id)
* insert no-support(ingredient.itemCodeableConcept.extension)
//* identifier TODO


// =====================================================================================
// Medication MTP, PRE
// =====================================================================================
Profile: CHEMEDEPRMedication
Parent: CHEMEDMedication
Id: ch-emed-epr-medication
Title: "Medication"
Description: "Definition of the medication"

* insert medication-ruleset

* insert problematic-reference(identifier.assigner)
* insert problematic-reference(manufacturer)


// =====================================================================================
// Medication DIS
// =====================================================================================
Profile: CHEMEDEPRMedicationMedicationDispense
Parent: CHEMEDMedicationMedicationDispense
Id: ch-emed-epr-medication-medicationdispense
Title: "Medication (DIS)"
Description: "Definition of the medication for the medication dispense"

* insert medication-ruleset
