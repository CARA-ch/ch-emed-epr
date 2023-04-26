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
Parent: CHEMEDQuantityWithEmedUnits
Id: ch-emed-epr-amount-quantity
Title: "Amount Quantity"
Description: "A quantity with an amount unit (no time unit)"
* insert quantity-ruleset
* code from CHEMEDEPRAmountQuantityUnitCode (required)
//* value obeys amount-quantity-int-or-simple-decimal // TODO: fix this FHIRPath

Invariant: amount-quantity-int-or-simple-decimal
Description: "An amount quantity shall be either an integer, or a decimal that ends with '.25', '.5', or '.75'"
Expression: "$this.contains('.').not() or $this.endsWith('.25') or $this.endsWith('.5') or $this.endsWith('.75')"
Severity: #error


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
