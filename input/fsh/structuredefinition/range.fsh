RuleSet: range-ruleset
* id D
* extension D


// =====================================================================================
// Amount Quantity Range
// =====================================================================================
Profile: CHEMEDEPRAmountRange
Parent: CHEMEDRangeWithEmedUnits
Id: ch-emed-epr-amount-range
Title: "Amount Range"
Description: "A range of amount quantities"

* insert range-ruleset
* low 1..1
* low only CHEMEDEPRAmountQuantity
* high 1..1
* high only CHEMEDEPRAmountQuantity
