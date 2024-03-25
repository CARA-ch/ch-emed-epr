RuleSet: range-ruleset
* insert no-support(id)
* insert no-support(extension)


// =====================================================================================
// Amount Quantity Range
// =====================================================================================
Profile: CHEMEDEPRAmountRange
Parent: CHCoreRangeWithEmedUnits
Id: ch-emed-epr-amount-range
Title: "Amount Range"
Description: "A range of amount quantities"

* insert range-ruleset
* low 1..1
* low only CHEMEDEPRAmountQuantity
* high 1..1
* high only CHEMEDEPRAmountQuantity
