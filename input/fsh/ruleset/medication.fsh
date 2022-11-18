RuleSet: medication-ruleset

* insert domain-resource-ruleset

* code.coding contains ATC 0..1 MS
* code.coding[GTIN] MS
* code.coding[ATC] only Coding
* code.coding[ATC] ^short = "Code of the medication (ATC)"
* code.coding[ATC].system = "urn:oid:2.16.840.1.113883.6.73" 
* code.coding[ATC].system 1..1 
* code.coding[ATC].system ^short = "ATC"
* code.coding[ATC].code 1..1
* code.coding[ATC].display 1..1
* manufacturer only Reference(CHEMEDEPROrganization)
* status = http://hl7.org/fhir/CodeSystem/medication-status#active "Active"
* form.coding 1..1
* code 1..1
* code ^short = "Codes that identify this medication. If the GTIN is known, please specify it."
* code.coding 0..*
* code.coding[GTIN] 0..1
* ingredient.itemCodeableConcept.coding 1..1
* code.id D
* code.coding[GTIN] insert coding-ruleset
* code.coding[ATC] insert coding-ruleset
* form insert codeableconcept-ruleset
* form.coding insert coding-ruleset
* batch.id D
* batch.extension D
* batch.modifierExtension 0..0 // It's a modifier
* batch.modifierExtension ^comment = "...All modifier extensions SHALL be documented"
* extension D
* code.extension D
* form.extension D
* ingredient.id D
* ingredient.extension D
* ingredient.modifierExtension 0..0 // It's a modifier
* ingredient.modifierExtension ^comment = "...All modifier extensions SHALL be documented"
* ingredient.itemCodeableConcept.id D
* ingredient.itemCodeableConcept.extension D
//* identifier TODO

// Documentation
