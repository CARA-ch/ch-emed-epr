RuleSet: range-ruleset
* id D
* extension D


// =====================================================================================
// Amount Quantity Range
// =====================================================================================
Profile: CHEMEDEPRAmountRange
Parent: CHEMEDRangeWithEmedUnits
Id: ch-emed-epr-amount-range
Title: "CH EMED EPR Amount Range"
Description: "A range of Amount Quantities"

* insert range-ruleset
* low only CHEMEDEPRAmountQuantity
* high only CHEMEDEPRAmountQuantity


// =====================================================================================
// Time Quantity Range
// =====================================================================================
Profile: CHEMEDEPRTimeRange
Parent: CHEMEDRangeWithEmedUnits
Id: ch-emed-epr-time-range
Title: "CH EMED EPR Time Range"
Description: "A range of Time Quantities"

* insert range-ruleset
* low only CHEMEDEPRTimeQuantity
* high only CHEMEDEPRTimeQuantity
