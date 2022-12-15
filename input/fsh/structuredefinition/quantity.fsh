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
Title: "Amount Quantity"
Description: "A quantity with an amount unit (no time unit)"
* insert quantity-ruleset
* code from CHEMEDEPRAmountQuantityUnitCode (required)
// todo: value also integer and strictly positive?


// =====================================================================================
// Time Quantity
// =====================================================================================
Profile: CHEMEDEPRTimeQuantity
Parent: CHEMEDQuantityWithEmedUnits
Id: ch-emed-epr-time-quantity
Title: "Time Quantity"
Description: "A quantity with a time unit (a duration)"
* insert quantity-ruleset
* code from CHEMEDEPRTimeQuantityUnitCode (required)
* system = $ucum
* value obeys time-quantity-strict-positive
* value obeys time-quantity-only-integer

Invariant: time-quantity-strict-positive
Description: "A time quantity shall have a strictly positive value"
Expression: "$this > 0"
Severity: #error

Invariant: time-quantity-only-integer
Description: "A time quantity shall only have an integer value"
Expression: "$this.convertsToInteger()"
Severity: #error 
