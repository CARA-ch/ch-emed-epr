Profile: CHEMEDEPRDosage
Parent: CHEMEDDosage
Id: ch-emed-epr-dosage
Title: "CH EMED EPR Dosage"
Description: "Definition of the main dosage element"

* insert modifier(modifierExtension)
* asNeeded[x] 0..1
* doseAndRate.doseQuantity only CHEMEDEPRQuantityWithEmedUnits
* insert modifier(timing.modifierExtension)
* doseAndRate.type D
* maxDosePerPeriod D
* maxDosePerAdministration D
* maxDosePerLifetime D
* timing.code D // TODO We may want that
* timing.event D
* method D
* site D // TODO We may want that
* extension D

* route ^definition = "...Implementers SHOULD focus on supporting values from the value set 'RouteOfAdministration AMBU'."
* asNeededBoolean ^definition = "...'true' if the medication is 'in reserve'. By default 'true'"
