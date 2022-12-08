ValueSet: CHEMEDEPRTimeQuantityUnitCode
Id: ch-emed-epr-time-quantity-unit-code
Title: "CH EMED EPR Time Quantity Unit Codes"
Description: """Unit Codes for time quantity units.

These are all unit codes about time quantities, excluding amount units."""

* ^experimental = true
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* $ucum#s "Second"
* $ucum#min "Minute"
* $ucum#h "Hour"
* $ucum#d "Day"
* $ucum#mo "Month"
* $ucum#a "Year"
