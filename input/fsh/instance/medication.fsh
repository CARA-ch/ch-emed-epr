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
* amount.denominator = 1 $sct#1681000175101 "Package"
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
Description: "Example for a medication with two ingredients (Exforge)"
Usage: #example
* code = urn:oid:2.51.1.1#7680577710149 "Exforge 10/160mg"
* code.text = "Exforge 10/160mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* form.text = "Tablet"
* amount.numerator = 28 '{Piece}' "Piece"
* amount.denominator = 1 $sct#1681000175101 "Package"
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
Description: "Example for a medication with ATC code (NaraDex)"
* meta.profile = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medication"
* code = $atc#N02CC02 "naratriptan"
* code.text = "NaraDex 2,5 mg Filmtabletten"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"
* form.text = "Film-coated tablet"
* amount.numerator = 2 $sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 $sct#1681000175101 "Package"
* ingredient.itemCodeableConcept = $sct#363571003 "Naratriptan"
* ingredient.itemCodeableConcept.text = "Naratriptan"
* ingredient.strength.numerator = 2.5 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedicationNorvasc
InstanceOf: CHEMEDEPRMedication
Usage: #example
Description: "Example for a medication (Norvasc)"
* code.text = "NORVASC Tabl 10 mg"
* code = urn:oid:2.51.1.1#7680500440334 "NORVASC Tabl 10 mg"
* ingredient.itemCodeableConcept = $sct#386864001 "Amlodipine (substance)"
* ingredient.itemCodeableConcept.text = "Amlodipine"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
* form.text = "Tablet"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* amount.numerator = 30 $sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 $sct#1681000175101 "Package"

Instance: MedicationParacetamolAxapharm
InstanceOf: CHEMEDEPRMedication
Usage: #example
Description: "Example for Axapharm paracetamol tablets 1g"
* language = #fr-CH
* code.coding[+] = $gtin#7680669830045 "PARACETAMOL Axapharm cpr pell 1g blister 20pce"
* code.coding[+] = $atc#N02BE01 "paracetamol"
* code.text = "PARACETAMOL Axapharm cpr pell 1g"
* form = $edqm#10221000 "Comprimé pelliculé"
* form.text = "Comprimé pelliculé"
* amount.numerator = 20 $sct#732936001 "comprimé"
* amount.denominator = 1 $sct#732984005 "plaquette"
* ingredient[+].itemCodeableConcept = $sct#387517004 "Paracetamol (substance)"
* ingredient[=].itemCodeableConcept.text = "Paracétamol"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 1 $ucum#g "g"
* ingredient[=].strength.denominator = 1 $sct#732936001 "comprimé"

Instance: MedicationParacetamolDafalganEff
InstanceOf: CHEMEDEPRMedication
Usage: #example
Description: "Example for Dafalgan paracetamol effervescent tablets 500mg"
* language = #fr-CH
* code.coding[+] = $gtin#7680475030011 "DAFALGAN cpr eff 500mg"
* code.coding[+] = $atc#N02BE01 "paracetamol"
* code.text = "DAFALGAN cpr eff 500mg"
* form = $edqm#10222000 "Comprimé effervescent"
* form.text = "Comprimé effervescent"
* amount.numerator = 40 $sct#732936001 "comprimé"
* amount.denominator = 1 $sct#732984005 "plaquette"
* ingredient[+].itemCodeableConcept = $sct#387517004 "Paracetamol (substance)"
* ingredient[=].itemCodeableConcept.text = "Paracétamol"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 500 $ucum#mg "mg"
* ingredient[=].strength.denominator = 1 $sct#732936001 "comprimé"

Instance: MedicationRamipril
InstanceOf: CHEMEDEPRMedication
Usage: #example
Description: "Medication example for Ramipril Mepha cpr 2.5mg"
* language = #fr-CH
* code.coding[+] = $gtin#7680658950037 "RAMIPRIL Mepha cpr 2.5 mg"
* code.coding[+] = $atc#C09AA05 "Ramipril"
* code.text = "RAMIPRIL Mepha cpr 2.5 mg"
* form = $edqm#10221000 "Comprimé pelliculé"
* form.text = "Comprimé pelliculé"
* amount.numerator = 20 $sct#732936001 "comprimé"
* amount.denominator = 1 $sct#732984005 "plaquette"
* ingredient[+].itemCodeableConcept = $sct#386872004 "Ramipril (substance)"
* ingredient[=].itemCodeableConcept.text = "Ramipril"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 2.5 $ucum#mg "mg"
* ingredient[=].strength.denominator = 1 $sct#732936001 "comprimé"
* ingredient[+].itemCodeableConcept = $sct#47703008 "Lactose (substance)"
* ingredient[=].itemCodeableConcept.text = "Lactose monohydraté"
* ingredient[=].isActive = false
* ingredient[=].strength.numerator = 158.8 $ucum#mg "mg"
* ingredient[=].strength.denominator = 1 $sct#732936001 "comprimé"
* ingredient[+].itemCodeableConcept.text = "Amidon prégélatinisé"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Oxyde de fer jaune (E 172)"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Croscarmellose sodique"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept = $sct#387319002 "Sodium bicarbonate (substance)"
* ingredient[=].itemCodeableConcept.text = "Bicarbonate de sodium"
* ingredient[=].strength.numerator = 1.16 $ucum#mg "mg"
* ingredient[=].strength.denominator = 1 $sct#732936001 "comprimé"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Fumarate de stéaryle sodique"
* ingredient[=].isActive = false

