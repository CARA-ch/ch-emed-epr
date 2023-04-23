Instance: MedicationTriatec
InstanceOf: CHEMEDEPRMedication
Title: "Medication: Triatec"
Description: "The example of the Triatec medication"
Usage: #example
* code.text = "TRIATEC Tabl 2.5 mg"
* code.coding[GTIN] = $gtin#7680538751228 "TRIATEC Tabl 2.5 mg 20 Stk"
* form.text = "Tablet"
* form.coding[+] = $edqm#10219000 "Tablet"
* amount.numerator = 20 $sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 $ucum#{Package} "Package"
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
* ingredient[=].strength.denominator.code = #732936001


Instance: MedicationWithTwoIngredients
InstanceOf: CHEMEDEPRMedication
Usage: #example
* code = urn:oid:2.51.1.1#7680577710149 "Exforge 10/160mg"
* code.text = "Exforge 10/160mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* form.text = "Tablet"
* amount.numerator = 28 '{Piece}' "Piece"
* amount.denominator = 1 '{Package}' "Package"
* ingredient[0].itemCodeableConcept = $sct#386864001 "Amlodipine (substance)"
* ingredient[=].itemCodeableConcept.text = "Amlodipine (substance)"
* ingredient[=].strength.numerator = 10 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
* ingredient[+].itemCodeableConcept = $sct#386876001 "Valsartan (substance)"
* ingredient[=].itemCodeableConcept.text = "Valsartan (substance)"
* ingredient[=].strength.numerator = 160 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedicationWithATC
InstanceOf: CHEMEDEPRMedication
Usage: #example
* meta.profile = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medication"
* code = $atc#N02CC02 "naratriptan"
* code.text = "NaraDex 2,5 mg Filmtabletten"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"
* form.text = "Film-coated tablet"
* amount.numerator = 2 $sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#363571003 "Naratriptan"
* ingredient.itemCodeableConcept.text = "Naratriptan"
* ingredient.strength.numerator = 2.5 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedicationNorvasc
InstanceOf: CHEMEDEPRMedication
Usage: #example
* code.text = "NORVASC Tabl 10 mg"
* code = urn:oid:2.51.1.1#7680500440334 "NORVASC Tabl 10 mg"
* ingredient.itemCodeableConcept.text = "Amlodipine"
* ingredient.itemCodeableConcept = $sct#386864001 "Amlodipine (substance)"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
* form.text = "Tablet"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* amount.numerator = 30 $sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 '{Package}' "Package"

