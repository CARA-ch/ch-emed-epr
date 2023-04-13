Instance: MedicationTriatec
InstanceOf: CHEMEDEPRMedication
Title: "Medication: Triatec"
Description: "The example of the Triatec medication"
Usage: #example
* code.text = "TRIATEC Tabl 2.5 mg"
* code.coding[GTIN] = $gtin#7680538751228 "TRIATEC Tabl 2.5 mg 20 Stk"
* form.text = "Tablet"
* form.coding[+] = $edqm#10219000 "Tablet"
/** amount.numerator = $sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = $ucum#{Package} "Package"
* ingredient[+].itemCodeableConcept[+].text = "Ramipril"
* ingredient[=].itemCodeableConcept[=].coding[+] = $sct#386872004 "Ramipril (substance)"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator.value = 2.5
* ingredient[=].strength.numerator.unit = "milligram"
* ingredient[=].strength.numerator.system = $ucum
* ingredient[=].strength.numerator.code = #mg
* ingredient[=].strength.denominator.value = 1
* ingredient[=].strength.denominator.unit = "Tablet"
* ingredient[=].strength.denominator.system = $sct
* ingredient[=].strength.denominator.code = #732936001*/
