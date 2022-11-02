Profile: CHEMEDEPRDosageStructuredNormal
Parent: CHEMEDDosageStructuredNormal
Id: ch-emed-epr-dosage-structured-normal
Title: "CH EMED EPR Dosage Structured Normal Dosing"
Description: "Normal dosing (IHE PHARM 1.3.6.1.4.1.19376.1.5.3.1.4.7.1)"

* extension 0..0
* asNeeded[x] 0..1
//* asNeeded[x].asNeededBoolean 1..1 ^short = "'true' if the medication is 'in reserve'. By default 'true'"
* method 0..0
* doseAndRate.doseQuantity only CHEMEDEPRQuantityWithEmedUnits
//* doseAndRate.dose[x].doseRange 0..0
//* doseAndRate.dose[x].doseQuantity only CHEMEDCARAQuantityWithEmedUnits
* doseAndRate.rate[x] 0..0
* maxDosePerPeriod 0..0
* maxDosePerAdministration 0..0
* maxDosePerLifetime 0..0
