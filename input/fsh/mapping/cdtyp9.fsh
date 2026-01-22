Instance: CdTyp9ToCHEMEDEPRAmountQuantityUnitCode
InstanceOf: ConceptMap
Title: "CdTyp9 -> CHEMEDEPRAmountQuantityUnitCode"
Description: "Mapping from HCI CdTyp9 unit codes to CHEMEDEPRAmountQuantityUnitCode codes."
Usage: #definition
* name = "CdTyp9ToCHEMEDEPRAmountQuantityUnitCode"
* status = #draft
* experimental = true
* purpose = """This concept map provides guidance for implementers that use HCI Index product(s) internally to translate unit codes for quantity amounts (both presentation and administration) to the eMedication service value set CHEMEDEPRAmountQuantityUnitCode.

This concept map does not - and could not possibly - provide a one to one match for every source code. Whenever possible, comments in this concept map provide further guidance on how to approach the translation of problematic items.            
"""
* sourceUri = $hciIndexUnitCodesUrl
* targetCanonical = "http://fhir.ch/ig/ch-emed-epr/ValueSet/ch-emed-epr-amount-quantity-unit-code"
// to SNOMED codes:
* group[+].source = $hciIndexUnitCodesUrl
* group[=].target = $sct
* group[=].element[+].code = #Appl
* group[=].element[=].target[+].code = #413568008
* group[=].element[=].target[=].display = "Application - unit of product usage (qualifier value)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Blist
* group[=].element[=].target[+].code = #732984005
* group[=].element[=].target[=].display = "Blister (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Btl
* group[=].element[=].target[+].code = #732982009
* group[=].element[=].target[=].display = "Bag (unit of presentation)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "The CdTyp9 Btl concept is described as Beutel (German) and sachet (French), sachet being a more specialized kind of bag, as in English. Hence it is not possible to accurately describe this mapping."
* group[=].element[=].target[+].code = #733012005
* group[=].element[=].target[=].display = "Pouch (unit of presentation)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "The CdTyp9 Btl concept is described as Beutel (German) and sachet (French), sachet being a more specialized kind of bag, as in English. Hence it is not possible to accurately describe this mapping."
* group[=].element[=].target[+].code = #733013000
* group[=].element[=].target[=].display = "Sachet (unit of presentation)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "The CdTyp9 Btl concept is described as Beutel (German) and sachet (French), sachet being a more specialized kind of bag, as in English. Hence it is not possible to accurately describe this mapping."
* group[=].element[+].code = #Dos
* group[=].element[=].target[+].code = #408102007
* group[=].element[=].target[=].display = "Dose"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Dosierpip
* group[=].element[=].target[+].code = #733009007
* group[=].element[=].target[=].display = "Pipette (unit of presentation)"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "A Dosierpipette (German) is more specifically a dosing pipette designed to measure and deliver precise amounts of medication."
* group[=].element[+].code = #Dosierspr
* group[=].element[=].target[+].code = #733020007
* group[=].element[=].target[=].display = "Syringe (unit of presentation)"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is more specifically a measuring or dosing syringe (Dosierspritze)."
* group[=].element[+].code = #E
* group[=].element[=].target[+].code = #767525000
* group[=].element[=].target[=].display = "Unit"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Fl
* group[=].element[=].target[+].code = #732986007
* group[=].element[=].target[=].display = "Bottle (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #gtt
* group[=].element[=].target[+].code = #732994000
* group[=].element[=].target[=].display = "Drop (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Hub
* group[=].element[=].target[+].code = #732981002
* group[=].element[=].target[=].display = "Actuation (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "In the context of drug administration, \"Hub\" in German often refers to the actuation or dose delivered by a medical device, such as a pump or a spray. In the case of an inhaler or nasal spray, a Hub refers to the quantity of medication released in one spray or actuation. For an insulin pump or other infusion devices, Hub can denote a specific unit of the medication delivered per pump cycle or actuation."
* group[=].element[+].code = #MB
* group[=].element[=].target[+].code = #732991008
* group[=].element[=].target[=].display = "Cup (unit of presentation)"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "Messbecher is more specifically a measuring cup."
* group[=].element[+].code = #"Mio U"
* group[=].element[=].target[+].code = #396186001
* group[=].element[=].target[=].display = "(the number ten for arbitrary powers ^ 6) * Unit"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #"MU"
* group[=].element[=].target[+].code = #396186001
* group[=].element[=].target[=].display = "(the number ten for arbitrary powers ^ 6) * Unit"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #nML
* group[=].element[=].target[+].code = #733015007
* group[=].element[=].target[=].display = "Spoonful (unit of presentation)"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is more specifically a measuring spoon (Messlöffel)."
* group[=].element[+].code = #Patr
* group[=].element[=].target[+].code = #732988008
* group[=].element[=].target[=].display = "Cartridge (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Pck
* group[=].element[=].target[+].code = #1681000175101
* group[=].element[=].target[=].display = "Package"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Pfl
* group[=].element[=].target[+].code = #733010002
* group[=].element[=].target[=].display = "Plaster (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Even though the code and the German description of the CdTyp9 code (Pflaster) is the direct translation of a plaster, the French description is a patch, which is a specialized kind of plaster."
* group[=].element[+].code = #Stk
* group[=].element[=].target[+].code = #246205007
* group[=].element[=].target[=].display = "Quantity"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Stk stands for Stück which could be translated as piece. CH EMED 5.0.0 removed the unit piece and replaced it with the SNOMED code for quantity. See https://github.com/hl7ch/ch-emed/issues/252 for reasoning."
* group[=].element[+].code = #tablet
* group[=].element[=].target[+].code = #732936001
* group[=].element[=].target[=].display = "Tablet (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Tb
* group[=].element[=].target[+].code = #733024003
* group[=].element[=].target[=].display = "Tube (unit of presentation)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Teilpck
* group[=].element[=].target[+].code = #1681000175101
* group[=].element[=].target[=].display = "Package"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "A Teilpackung is a partial package or subdivided portion of a package."
* group[=].element[+].code = #TU
* group[=].element[=].target[+].code = #2011000175108
* group[=].element[=].target[=].display = "Thousand per * Unit"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #U
* group[=].element[=].target[+].code = #767525000
* group[=].element[=].target[=].display = "Unit"
* group[=].element[=].target[=].equivalence = #equal
// to UCUM codes:
* group[+].source = $hciIndexUnitCodesUrl
* group[=].target = $ucum
* group[=].element[+].code = #%
* group[=].element[=].target[+].code = #%
* group[=].element[=].target[=].display = "percent"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Bq
* group[=].element[=].target[+].code = #Bq
* group[=].element[=].target[=].display = "Becquerel"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #EL
* group[=].element[=].target[+].code = #[tbs_m]
* group[=].element[=].target[=].display = "tablespoon - metric"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "Esslöffel (EL) is the German translation of the metric tablespoon."
* group[=].element[+].code = #g
* group[=].element[=].target[+].code = #g
* group[=].element[=].target[=].display = "gram"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #GBq
* group[=].element[=].target[+].code = #GBq
* group[=].element[=].target[=].display = "gigaBecquerel"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kBq
* group[=].element[=].target[+].code = #kBq
* group[=].element[=].target[=].display = "kiloBecquerel"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kcal
* group[=].element[=].target[+].code = #kcal
* group[=].element[=].target[=].display = "kilocalorie"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kg
* group[=].element[=].target[+].code = #kg
* group[=].element[=].target[=].display = "kilogram"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kJ
* group[=].element[=].target[+].code = #kJ
* group[=].element[=].target[=].display = "kilojoule"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #L
* group[=].element[=].target[+].code = #L
* group[=].element[=].target[=].display = "liter"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #MBq
* group[=].element[=].target[+].code = #MBq
* group[=].element[=].target[=].display = "megaBecquerel"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mcg
* group[=].element[=].target[+].code = #ug
* group[=].element[=].target[=].display = "microgram"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mcl
* group[=].element[=].target[+].code = #uL
* group[=].element[=].target[=].display = "microliter"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mcm
* group[=].element[=].target[+].code = #umol
* group[=].element[=].target[=].display = "micromole"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mg
* group[=].element[=].target[+].code = #mg
* group[=].element[=].target[=].display = "milligram"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #"Mio UI"
* group[=].element[=].target[+].code = #10*6.[iU]
* group[=].element[=].target[=].display = "MillionInternationalUnit"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ml
* group[=].element[=].target[+].code = #mL
* group[=].element[=].target[=].display = "milliliter"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mmol
* group[=].element[=].target[+].code = #mmol
* group[=].element[=].target[=].display = "millimole"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mol
* group[=].element[=].target[+].code = #mol
* group[=].element[=].target[=].display = "mole"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ng
* group[=].element[=].target[+].code = #ng
* group[=].element[=].target[=].display = "nanogram"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #nmol
* group[=].element[=].target[+].code = #nmol
* group[=].element[=].target[=].display = "nanomole"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #TL
* group[=].element[=].target[+].code = #[tsp_m]
* group[=].element[=].target[=].display = "teaspoon - metric"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #UI
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].equivalence = #equal
// unmatched:
* group[+].source = $hciIndexUnitCodesUrl
* group[=].element[+].code = #h
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #Jahr
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #Monat
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #N/A
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #Tag
* group[=].element[=].target[+].equivalence = #unmatched


Instance: CHEMEDEPRAmountQuantityUnitCodeToCdTyp9
InstanceOf: ConceptMap
Title: "CHEMEDEPRAmountQuantityUnitCode -> CdTyp9"
Description: "Mapping from CHEMEDEPRAmountQuantityUnitCode codes to HCI CdTyp9 unit codes."
Usage: #definition
* name = "CHEMEDEPRAmountQuantityUnitCodeToCdTyp9"
* status = #draft
* experimental = true
* sourceCanonical = "http://fhir.ch/ig/ch-emed-epr/ValueSet/ch-emed-epr-amount-quantity-unit-code"
* targetUri = $hciIndexUnitCodesUrl
// SNOMED codes:
* group[+].source = $sct
* group[=].target = $hciIndexUnitCodesUrl
* group[=].element[+].code = #732981002
* group[=].element[=].display = "Actuation (unit of presentation)"
* group[=].element[=].target[+].code = #Hub
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "In the context of drug administration, \"Hub\" in German often refers to the actuation or dose delivered by a medical device, such as a pump or a spray. In the case of an inhaler or nasal spray, a Hub refers to the quantity of medication released in one spray or actuation. For an insulin pump or other infusion devices, Hub can denote a specific unit of the medication delivered per pump cycle or actuation."
* group[=].element[+].code = #732978007
* group[=].element[=].display = "Ampule (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #413568008
* group[=].element[=].display = "Application - unit of product usage (qualifier value)"
* group[=].element[=].target[+].code = #Appl
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #732980001
* group[=].element[=].display = "Applicator (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732982009
* group[=].element[=].display = "Bag (unit of presentation)"
* group[=].element[=].target[+].code = #Btl
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "In HCI's code system, there is no equivalent for a bag (or French poche), e.g. an infusion bag. The broader German term Beutel is instead used for single dose sachets."
* group[=].element[+].code = #732983004
* group[=].element[=].display = "Barrel (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732984005
* group[=].element[=].display = "Blister (unit of presentation)"
* group[=].element[=].target[+].code = #Blist
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #732985006
* group[=].element[=].display = "Block (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732986007
* group[=].element[=].display = "Bottle (unit of presentation)"
* group[=].element[=].target[+].code = #Fl
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #732987003
* group[=].element[=].display = "Cachet (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732937005
* group[=].element[=].display = "Capsule (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732988008
* group[=].element[=].display = "Cartridge (unit of presentation)"
* group[=].element[=].target[+].code = #Patr
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #732989000
* group[=].element[=].display = "Chewing gum (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732990009
* group[=].element[=].display = "Container (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732991008
* group[=].element[=].display = "Cup (unit of presentation)"
* group[=].element[=].target[+].code = #MB
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "Messbecher is more specifically a measuring cup."
* group[=].element[+].code = #732992001
* group[=].element[=].display = "Cylinder (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732993006
* group[=].element[=].display = "Dressing (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732994000
* group[=].element[=].display = "Drop (unit of presentation)"
* group[=].element[=].target[+].code = #gtt
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #732995004
* group[=].element[=].display = "Film (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732996003
* group[=].element[=].display = "Implant (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732997007
* group[=].element[=].display = "Inhaler (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732998002
* group[=].element[=].display = "Insert (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732999005
* group[=].element[=].display = "Jar (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733001005
* group[=].element[=].display = "Lyophilisate (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733002003
* group[=].element[=].display = "Matrix (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733003008
* group[=].element[=].display = "Pad (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733004002
* group[=].element[=].display = "Pastille (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733005001
* group[=].element[=].display = "Patch (unit of presentation)"
* group[=].element[=].target[+].code = #Pfl
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "HCI's CDTyp9 contains only a general code for Plaster (translated within the code system as the more specialized patch in French, oddly enough)."
* group[=].element[+].code = #733006000
* group[=].element[=].display = "Pen (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733007009
* group[=].element[=].display = "Pessary (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733008004
* group[=].element[=].display = "Pillule (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733009007
* group[=].element[=].display = "Pipette (unit of presentation)"
* group[=].element[=].target[+].code = #Dosierpip
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "A Dosierpipette (German) is more specifically a dosing pipette designed to measure and deliver precise amounts of medication."
* group[=].element[+].code = #733010002
* group[=].element[=].display = "Plaster (unit of presentation)"
* group[=].element[=].target[+].code = #Pfl
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #733011003
* group[=].element[=].display = "Plug (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733012005
* group[=].element[=].display = "Pouch (unit of presentation)"
* group[=].element[=].target[+].code = #Btl
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "In HCI's code system, there is no equivalent for a pouch. The broader German term Beutel is instead used for single dose sachets."
* group[=].element[+].code = #733013000
* group[=].element[=].display = "Sachet (unit of presentation)"
* group[=].element[=].target[+].code = #Btl
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "In HCI's code system, The broader German term Beutel is instead used for single dose sachets and translated as such on its French display translation."
* group[=].element[+].code = #733014006
* group[=].element[=].display = "Sponge (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733015007
* group[=].element[=].display = "Spoonful (unit of presentation)"
* group[=].element[=].target[+].code = #nML
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "The target code is more specifically a measuring spoon (Messlöffel)."
* group[=].element[+].code = #733016008
* group[=].element[=].display = "Stick (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733017004
* group[=].element[=].display = "Straw (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733018009
* group[=].element[=].display = "Strip (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733019001
* group[=].element[=].display = "Suppository (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733020007
* group[=].element[=].display = "Syringe (unit of presentation)"
* group[=].element[=].target[+].code = #Dosierspr
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "The target code is more specifically a measuring or dosing syringe (Dosierspritze)."
* group[=].element[+].code = #733021006
* group[=].element[=].display = "System (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #732936001
* group[=].element[=].display = "Tablet (unit of presentation)"
* group[=].element[=].target[+].code = #tablet
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #733022004
* group[=].element[=].display = "Tampon (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733023009
* group[=].element[=].display = "Thread (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733024003
* group[=].element[=].display = "Tube (unit of presentation)"
* group[=].element[=].target[+].code = #Tb
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #733025002
* group[=].element[=].display = "Vessel (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #733026001
* group[=].element[=].display = "Vial (unit of presentation)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #408102007
* group[=].element[=].display = "Dose"
* group[=].element[=].target[+].code = #Dos
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #396186001
* group[=].element[=].display = "(the number ten for arbitrary powers ^ 6) * Unit"
* group[=].element[=].target[+].code = #"Mio U"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "CdTyp9 has two codes for a million units: \"Mio U\" and \"MU\" (labeled as Millionen Einheiten).\nSince MU could bring some confusion, as it is also stands for Measurement Unit in English, with a different meaning, CdTyp9's \"Mio U\" is preferred by this concept map."
* group[=].element[=].target[+].code = #"MU"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "CdTyp9 has two codes for a million units: \"Mio U\" and \"MU\" (labeled as Millionen Einheiten).\nSince MU could bring some confusion, as it is also stands for Measurement Unit in English, with a different meaning, CdTyp9's \"Mio U\" is preferred by this concept map."
* group[=].element[+].code = #1681000175101
* group[=].element[=].display = "Package"
* group[=].element[=].target[+].code = #Pck
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #2011000175108
* group[=].element[=].display = "Thousand Per * Unit"
* group[=].element[=].target[+].code = #TU
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #767525000
* group[=].element[=].display = "Unit"
* group[=].element[=].target[+].code = #U
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "CdTyp9 has two codes for unit, E for German Einheit and U for French unité (or English unit). This concept map suggests using U for coherence also with English."
* group[=].element[=].target[+].code = #E
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "CdTyp9 has two codes for unit, E for German Einheit and U for French unité (or English unit). This concept map suggests using U for coherence also with English."
* group[=].element[+].code = #246205007
* group[=].element[=].display = "Quantity"
* group[=].element[=].target[+].code = #Stk
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Stk stands for Stück which could be translated as piece. CH EMED 5.0.0 removed the unit piece and replaced it with the SNOMED code for quantity. See https://github.com/hl7ch/ch-emed/issues/252 for reasoning."
// UCUM codes:
* group[+].source = $ucum
* group[=].target = $hciIndexUnitCodesUrl
* group[=].element[+].code = #Bq
* group[=].element[=].display = "Becquerel"
* group[=].element[=].target[+].code = #Bq
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kBq
* group[=].element[=].display = "kiloBecquerel"
* group[=].element[=].target[+].code = #kBq
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #MBq
* group[=].element[=].display = "megaBecquerel"
* group[=].element[=].target[+].code = #MBq
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #GBq
* group[=].element[=].display = "gigaBecquerel"
* group[=].element[=].target[+].code = #GBq
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #%
* group[=].element[=].display = "percent"
* group[=].element[=].target[+].code = #%
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ng
* group[=].element[=].display = "nanogram"
* group[=].element[=].target[+].code = #ng
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ug
* group[=].element[=].display = "microgram"
* group[=].element[=].target[+].code = #mcg
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mg
* group[=].element[=].display = "milligram"
* group[=].element[=].target[+].code = #mg
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #g
* group[=].element[=].display = "gram"
* group[=].element[=].target[+].code = #g
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kg
* group[=].element[=].display = "kilogram"
* group[=].element[=].target[+].code = #kg
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kcal
* group[=].element[=].display = "kilocalorie"
* group[=].element[=].target[+].code = #kcal
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #kJ
* group[=].element[=].display = "kilojoule"
* group[=].element[=].target[+].code = #kJ
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #meq
* group[=].element[=].display = "milliequivalent"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #nmol
* group[=].element[=].display = "nanomole"
* group[=].element[=].target[+].code = #nmol
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #umol
* group[=].element[=].display = "micromole"
* group[=].element[=].target[+].code = #mcmol
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mmol
* group[=].element[=].display = "millimole"
* group[=].element[=].target[+].code = #mmol
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mol
* group[=].element[=].display = "mole"
* group[=].element[=].target[+].code = #mol
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #nL
* group[=].element[=].display = "nanoliter"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Although CdTyp9 has no code for nanoliter, other units of volume, e.g. liter, are present and can be used by applying a transformation to the value."
* group[=].element[+].code = #uL
* group[=].element[=].display = "microliter"
* group[=].element[=].target[+].code = #mcl
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mL
* group[=].element[=].display = "milliliter"
* group[=].element[=].target[+].code = #ml
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #L
* group[=].element[=].display = "liter"
* group[=].element[=].target[+].code = #L
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mm2
* group[=].element[=].display = "square millimeter"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #cm
* group[=].element[=].display = "centimeter"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #cm2
* group[=].element[=].display = "square centimeter"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #cm3
* group[=].element[=].display = "cubic centimeter"
* group[=].element[=].target[+].code = #ml
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Although CdTyp9 has no code for cubic centimeter, 1 cubic centimeter is equivalent to 1 milliliter, which is present."
* group[=].element[+].code = #[tbs_m]
* group[=].element[=].display = "tablespoon - metric"
* group[=].element[=].target[+].code = #EL
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "Esslöffel (EL) is the German translation of the metric tablespoon."
* group[=].element[+].code = #10*6.[iU]
* group[=].element[=].display = "MillionInternationalUnit"
* group[=].element[=].target[+].code = #"Mio UI"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #[ppm]
* group[=].element[=].display = "Parts Per Million"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #[tsp_m]
* group[=].element[=].display = "teaspoon - metric"
* group[=].element[=].target[+].code = #TL
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "Teelöffel (TL) is the German translation of the metric teaspoon."
* group[=].element[+].code = #[iU]
* group[=].element[=].display = "international unit"
* group[=].element[=].target[+].code = #UI
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #[CFU]
* group[=].element[=].display = "Colony Forming Units"
* group[=].element[=].target[+].equivalence = #unmatched





Instance: CdTyp9ToCHEMEDEPRTimeQuantityUnitCode
InstanceOf: ConceptMap
Title: "CdTyp9 -> CHEMEDEPRTimeQuantityUnitCode"
Description: "Mapping from HCI CdTyp9 unit codes to CHEMEDEPRTimeQuantityUnitCode codes."
Usage: #definition
* name = "CdTyp9ToCHEMEDEPRTimeQuantityUnitCode"
* status = #draft
* experimental = true
* sourceUri = $hciIndexUnitCodesUrl
* targetCanonical = "http://fhir.ch/ig/ch-emed-epr/ValueSet/ch-emed-epr-time-quantity-unit-code"
* group[+].source = $hciIndexUnitCodesUrl
* group[=].target = $ucum
* group[=].element[+].code = #h
* group[=].element[=].target[+].code = #h
* group[=].element[=].target[=].display = "Hour"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Jahr
* group[=].element[=].target[+].code = #a
* group[=].element[=].target[=].display = "Year"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Monat
* group[=].element[=].target[+].code = #mo
* group[=].element[=].target[=].display = "Month"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #Tag
* group[=].element[=].target[+].code = #d
* group[=].element[=].target[=].display = "Day"
* group[=].element[=].target[=].equivalence = #equal


Instance: CHEMEDEPRTimeQuantityUnitCodeToCdTyp9
InstanceOf: ConceptMap
Title: "CHEMEDEPRTimeQuantityUnitCode -> CdTyp9"
Description: "Mapping from CHEMEDEPRTimeQuantityUnitCode codes to HCI CdTyp9 unit codes."
Usage: #definition
* name = "CHEMEDEPRTimeQuantityUnitCodeToCdTyp9"
* status = #draft
* experimental = true
* sourceCanonical = "http://fhir.ch/ig/ch-emed-epr/ValueSet/ch-emed-epr-time-quantity-unit-code"
* targetUri = $hciIndexUnitCodesUrl
* group[+].source = $ucum
* group[=].target = $hciIndexUnitCodesUrl
* group[=].element[+].code = #s
* group[=].element[=].display = "Second"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #min
* group[=].element[=].display = "Minute"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #h
* group[=].element[=].display = "Hour"
* group[=].element[=].target[+].code = #h
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #d
* group[=].element[=].display = "Day"
* group[=].element[=].target[+].code = #Tag
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #mo
* group[=].element[=].display = "Month"
* group[=].element[=].target[+].code = #Monat
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #a
* group[=].element[=].display = "Year"
* group[=].element[=].target[+].code = #Jahr
* group[=].element[=].target[=].equivalence = #equal
