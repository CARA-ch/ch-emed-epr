RuleSet: quantity-ruleset
* value 1..1
* unit 1..1
* system 1..1
* code 1..1
* extension D
* insert modifier(comparator) 


RuleSet: time-quantity-ruleset
* insert quantity-ruleset
* code from http://hl7.org/fhir/ValueSet/units-of-time (required)
* system = $ucum


RuleSet: amount-quantity-ruleset
* insert quantity-ruleset
* code from CHEMEDEPRAmountQuantityUnitCode
