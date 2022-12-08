RuleSet: quantity-ruleset
* value 1..1
* unit 1..1
* system 1..1
* code 1..1
* extension D
* id D
* insert modifier(comparator)


// =====================================================================================
// Amount Quantity
// =====================================================================================
Profile: CHEMEDEPRAmountQuantity
Parent: CHEMEDQuantityWithEmedUnits
Id: ch-emed-epr-amount-quantity
Title: "CH EMED EPR Amount Quantity"
Description: "A quantity with an amount unit (no time unit)"

* insert quantity-ruleset
* code from CHEMEDEPRAmountQuantityUnitCode (required)


// =====================================================================================
// Time Quantity
// =====================================================================================
Profile: CHEMEDEPRTimeQuantity
Parent: CHEMEDQuantityWithEmedUnits
Id: ch-emed-epr-time-quantity
Title: "CH EMED EPR Time Quantity"
Description: "A quantity with a time unit"

* insert quantity-ruleset
* code from CHEMEDEPRTimeQuantityUnitCode (required)
* system = $ucum
