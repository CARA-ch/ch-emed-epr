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
* low only CHEMEDEPRAmountQuantity
* high only CHEMEDEPRAmountQuantity


// =====================================================================================
// Time Quantity Range
// =====================================================================================
Profile: CHEMEDEPRTimeRange
Parent: CHEMEDRangeWithEmedUnits
Id: ch-emed-epr-time-range
Title: "Time Range"
Description: "A range of time quantities"

* insert range-ruleset
* low only CHEMEDEPRTimeQuantity
* high only CHEMEDEPRTimeQuantity
