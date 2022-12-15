RuleSet: ratio-ruleset
* id D
* extension D


// =====================================================================================
// Quantity Ratio (Amount / Amount)
// =====================================================================================
Profile: CHEMEDEPRRatioAmountPerAmount
Parent: CHEMEDRatioWithEmedUnits
Id: ch-emed-epr-ratio-amount-per-amount
Title: "Ratio (Amount / Amount)"
Description: "A ratio of amount per amount"

* insert ratio-ruleset
* numerator only CHEMEDEPRAmountQuantity
* denominator only CHEMEDEPRAmountQuantity


// =====================================================================================
// Quantity Ratio (Amount / Time)
// =====================================================================================
Profile: CHEMEDEPRRatioAmountPerTime
Parent: CHEMEDRatioWithEmedUnits
Id: ch-emed-epr-ratio-amount-per-time
Title: "Ratio (Amount / Time)"
Description: "A ratio of amount per time"

* insert ratio-ruleset
* numerator only CHEMEDEPRAmountQuantity
* denominator only CHEMEDEPRTimeQuantity
