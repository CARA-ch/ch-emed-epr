RuleSet: quantity-ruleset
* value 1..1
* unit 1..1
* system 1..1
* code 1..1
* insert no-support(extension)
* insert no-support(id)
* insert modifier(comparator)


// =====================================================================================
// Amount Quantity
// =====================================================================================
Profile: CHEMEDEPRAmountQuantity
Parent: CHCoreQuantityWithEmedUnits
Id: ch-emed-epr-amount-quantity
Title: "Amount Quantity"
Description: "A quantity with an amount unit (no time unit)"
* insert quantity-ruleset
* code from CHEMEDEPRAmountQuantityUnitCode (required)
* value obeys amount-quantity-int-or-simple-decimal

Invariant: amount-quantity-int-or-simple-decimal
Description: "An amount quantity should be either an integer, or a decimal that ends with '.25', '.5', or '.75' for non-scientific units (like tablets, pillules, ampules, etc.)"
Expression: "$this.toString().contains('.').not() or $this.toString().endsWith('.25') or $this.toString().endsWith('.5') or $this.toString().endsWith('.75')"
Severity: #warning


// =====================================================================================
// Time Quantity
// =====================================================================================
Profile: CHEMEDEPRTimeQuantity
Parent: CHCoreQuantityWithEmedUnits
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
Expression: "$this.toString().convertsToInteger()"
Severity: #error 
