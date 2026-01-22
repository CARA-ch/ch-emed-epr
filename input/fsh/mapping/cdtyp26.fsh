Instance: CdTyp26ToRouteOfAdministrationEDQM
InstanceOf: ConceptMap
Title: "CdTyp26 -> RouteOfAdministrationEDQM"
Description: "Mapping from HCI CdTyp26 route of administration codes to RouteOfAdministrationEDQM codes."
Usage: #definition
* name = "CdTyp26ToRouteOfAdministrationEDQM"
* status = #draft
* experimental = true
* purpose = """This concept map provides guidance for implementers that use HCI Index product(s) internally to translate codes for routes of administration to the eMedication service value set RouteOfAdministrationEDQM (defined as part of CH TERM).

This concept map does not - and could not possibly - provide a one to one match for every source code. Whenever possible, comments in this concept map provide further guidance on how to approach the translation of problematic items.            
"""
* sourceUri = $hciIndexRouteOfAdministrationTableUrl
* targetCanonical = "http://fhir.ch/ig/ch-term/ValueSet/edqm-routeofadministration"
* group[+].source = $hciIndexRouteOfAdministrationTableUrl
* group[=].target = $edqm //EDQM Standard Terms system
* group[=].element[+].code = #BLADINJ
* group[=].element[=].target[+].code = #20046000
* group[=].element[=].target[=].display = "Intravesical use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, an intravesical injection."
* group[=].element[+].code = #BLADINSTL
* group[=].element[=].target[+].code = #20046000
* group[=].element[=].target[=].display = "Intravesical use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, an intravesical instillation."
* group[=].element[+].code = #BUC
* group[=].element[=].target[+].code = #20002500
* group[=].element[=].target[=].display = "Buccal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #CHEW
* group[=].element[=].target[+].code = #20053000
* group[=].element[=].target[=].display = "Oral use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, oral use by means of chewing."
* group[=].element[+].code = #DEN
* group[=].element[=].target[+].code = #20004000
* group[=].element[=].target[=].display = "Dental use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ENDOSINUS
* group[=].element[=].target[+].code = #20007000
* group[=].element[=].target[=].display = "Endosinusial use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ENDOZERV
* group[=].element[=].target[+].code = #20006000
* group[=].element[=].target[=].display = "Endocervical use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #EPI
* group[=].element[=].target[+].code = #20009000
* group[=].element[=].target[=].display = "Epidural use"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "The source code is, specifically, epidural use by means of infusion. EDQM states defines the epidural use code as \"Injection of a medicinal product into the epidural space.\"."
* group[=].element[+].code = #EPIDURINJ
* group[=].element[=].target[+].code = #20009000
* group[=].element[=].target[=].display = "Epidural use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #EPILESION
* group[=].element[=].target[+].code = #20010000	
* group[=].element[=].target[=].display = "Epilesional use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ET
* group[=].element[=].target[+].code = #20008000
* group[=].element[=].target[=].display = "Endotracheopulmonary use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, endotracheal use. Note that EDQM requires this to be by means of an instillation and inhalations are excluded."
* group[=].element[+].code = #ETINSTL
* group[=].element[=].target[+].code = #20008000
* group[=].element[=].target[=].display = "Endotracheopulmonary use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, endotracheal use by means of an instillation."
* group[=].element[+].code = #EXTAMNIOINJ
* group[=].element[=].target[+].code = #20011000
* group[=].element[=].target[=].display = "Extraamniotic use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #EXTCORP
* group[=].element[=].target[+].code = #20011500
* group[=].element[=].target[=].display = "Extracorporeal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #EXTCORPINJ
* group[=].element[=].target[+].code = #20011500
* group[=].element[=].target[=].display = "Extracorporeal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, extracorporeal use by means of an injection."
* group[=].element[+].code = #EXTPLRINFUS
* group[=].element[=].target[+].code = #20087000	
* group[=].element[=].target[=].display = "Extrapleural use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, extrapleural use by means of infusion."
* group[=].element[+].code = #GARGLE
* group[=].element[=].target[+].code = #20055000
* group[=].element[=].target[=].display = "Oropharyngeal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, oropharyngeal use by means of gargles."
* group[=].element[+].code = #GIN
* group[=].element[=].target[+].code = #20014000
* group[=].element[=].target[=].display = "Gingival use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #GINGINJ
* group[=].element[=].target[+].code = #20014000
* group[=].element[=].target[=].display = "Gingival use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, gingival use by means of injection."
* group[=].element[+].code = #GT
* group[=].element[=].target[+].code = #20013000
* group[=].element[=].target[=].display = "Gastroenteral use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, gastro-intestinal use by means of instillation."
* group[=].element[+].code = #HEMODIFF
* group[=].element[=].target[+].code = #20015000
* group[=].element[=].target[=].display = "Haemodialysis"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IA
* group[=].element[=].target[+].code = #20023000
* group[=].element[=].target[=].display = "Intraarterial use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intraarterial use by means of infusion."
* group[=].element[+].code = #IAINJ
* group[=].element[=].target[+].code = #20023000
* group[=].element[=].target[=].display = "Intraarterial use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intraarterial use by means of injection."
* group[=].element[+].code = #IAMNIOINJ
* group[=].element[=].target[+].code = #20022000
* group[=].element[=].target[=].display = "Intraamniotic use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #IARTINJ
* group[=].element[=].target[+].code = #20024000
* group[=].element[=].target[=].display = "Intraarticular use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #IBURSINJ
* group[=].element[=].target[+].code = #20025000
* group[=].element[=].target[=].display = "Intrabursal use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #ICARDINJ
* group[=].element[=].target[+].code = #20026000
* group[=].element[=].target[=].display = "Intracardiac use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #ICEREBRAL
* group[=].element[=].target[+].code = #20027010
* group[=].element[=].target[=].display = "Intracerebral use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ICERVICAL
* group[=].element[=].target[+].code = #20028000
* group[=].element[=].target[=].display = "Intracervical use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ICHOLANGIOP
* group[=].element[=].target[+].code = #20028300
* group[=].element[=].target[=].display = "Intracholangiopancreatic use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ICISTERN
* group[=].element[=].target[+].code = #20028500
* group[=].element[=].target[=].display = "Intracisternal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ICORNEAL
* group[=].element[=].target[+].code = #20084000	
* group[=].element[=].target[=].display = "Intracorneal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ICORONINJ
* group[=].element[=].target[+].code = #20029000
* group[=].element[=].target[=].display = "Intracoronary use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #ICORPCAVINJ
* group[=].element[=].target[+].code = #20027000
* group[=].element[=].target[=].display = "Intracavernous use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #IDINJ
* group[=].element[=].target[+].code = #20030000
* group[=].element[=].target[=].display = "Intradermal use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #IDISCINJ
* group[=].element[=].target[+].code = #20031000
* group[=].element[=].target[=].display = "Intradiscal use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #IDUODINSTIL
* group[=].element[=].target[+].code = #20021000
* group[=].element[=].target[=].display = "Intestinal use"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "The source code is, specifically, an intraduodenal instillation, while the target code is any intestinal use (duodenum, jejunum, ileum and colon)."
* group[=].element[+].code = #IEPIDERMAL
* group[=].element[=].target[+].code = #20031500
* group[=].element[=].target[=].display = "Intraepidermal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IGASTINSTIL
* group[=].element[=].target[+].code = #20013500
* group[=].element[=].target[=].display = "Gastric use"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "The source code is, specifically, intragastric use by means of an instillation, while the target code is any gastric use."
* group[=].element[+].code = #IGLANDINJ
* group[=].element[=].target[+].code = #20031700
* group[=].element[=].target[=].display = "Intragrandular use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intragrandular use by means of an injection, while the target code is any gastric use."
* group[=].element[+].code = #IKAMERAL
* group[=].element[=].target[+].code = #20025500
* group[=].element[=].target[=].display = "Intracameral use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IKARTILAG
* group[=].element[=].target[+].code = #20026500
* group[=].element[=].target[=].display = "Intracartilaginous use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ILES
* group[=].element[=].target[+].code = #20032000
* group[=].element[=].target[=].display = "Intralesional use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ILESINJ
* group[=].element[=].target[+].code = #20032000
* group[=].element[=].target[=].display = "Intralesional use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intralesional use by means of injection."
* group[=].element[+].code = #ILYMPJINJ
* group[=].element[=].target[+].code = #20033000
* group[=].element[=].target[=].display = "Intralymphatic use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #IM
* group[=].element[=].target[+].code = #20035000
* group[=].element[=].target[=].display = "Intramuscular use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IMPLANTINSE
* group[=].element[=].target[+].code = #20015500
* group[=].element[=].target[=].display = "Implantation"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #INFILTINJ
* group[=].element[=].target[+].code = #20019500
* group[=].element[=].target[=].display = "Infiltration"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #IOINJ
* group[=].element[=].target[+].code = #20036000
* group[=].element[=].target[=].display = "Intraocular use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intraocular use by means of injection."
* group[=].element[+].code = #IOINSTIL
* group[=].element[=].target[+].code = #20036000
* group[=].element[=].target[=].display = "Intraocular use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intraocular use by means of instillation."
* group[=].element[+].code = #IONTOPHORES
* group[=].element[=].target[+].code = #20047500
* group[=].element[=].target[=].display = "Iontophoresis"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IOSSINJ
* group[=].element[=].target[+].code = #20036500
* group[=].element[=].target[=].display = "Intraosseus use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intraosseus use by means of injection."
* group[=].element[+].code = #IPDP
* group[=].element[=].target[+].code = #20038000
* group[=].element[=].target[=].display = "Intraperitoneal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IPERICARDIN
* group[=].element[=].target[+].code = #20037000
* group[=].element[=].target[=].display = "Intrapericardial use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IPLRINJ
* group[=].element[=].target[+].code = #20039000
* group[=].element[=].target[=].display = "Intrapleural use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IPORTAL
* group[=].element[=].target[+].code = #20039200
* group[=].element[=].target[=].display = "Intraportal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intraportal use by means of infusion."
* group[=].element[+].code = #IPORTALINJ
* group[=].element[=].target[+].code = #20039200
* group[=].element[=].target[=].display = "Intraportal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intraportal use by means of injection."
* group[=].element[+].code = #IPROSTAT
* group[=].element[=].target[+].code = #20039500
* group[=].element[=].target[=].display = "Intraprostatic use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IPUTAMINAL
* group[=].element[=].target[+].code = #20086000
* group[=].element[=].target[=].display = "Intraputaminal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ISTERNALINJ
* group[=].element[=].target[+].code = #20041000
* group[=].element[=].target[=].display = "Intrasternal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IT
* group[=].element[=].target[+].code = #20042000
* group[=].element[=].target[=].display = "Intrathecal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intrathecal use by means of infusion."
* group[=].element[+].code = #ITINJ
* group[=].element[=].target[+].code = #20042000
* group[=].element[=].target[=].display = "Intrathecal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intrathecal use by means of injection."
* group[=].element[+].code = #ITUMINJ
* group[=].element[=].target[+].code = #20043000
* group[=].element[=].target[=].display = "Intratumoral use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IU
* group[=].element[=].target[+].code = #20044000
* group[=].element[=].target[=].display = "Intrauterine use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intrauterine use by means of insertion."
* group[=].element[+].code = #IUINJ
* group[=].element[=].target[+].code = #20044000
* group[=].element[=].target[=].display = "Intrauterine use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intrauterine use by means of injection."
* group[=].element[+].code = #IV
* group[=].element[=].target[+].code = #20045000
* group[=].element[=].target[=].display = "Intravenous use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intravenous use by means of infusion."
* group[=].element[+].code = #IVENTCERE
* group[=].element[=].target[+].code = #20080000
* group[=].element[=].target[=].display = "Intracerebroventricular use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IVFLUSH
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No match is available. Arguably, the EDQM code 20062000 (Route of administration not applicable) could be used."
* group[=].element[+].code = #IVINJ
* group[=].element[=].target[+].code = #20045000
* group[=].element[=].target[=].display = "Intravenous use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #IVITINJ
* group[=].element[=].target[+].code = #20047000
* group[=].element[=].target[=].display = "Intravitreal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, intravitreal use by means of injection."
* group[=].element[+].code = #LARYNGOPHAR
* group[=].element[=].target[+].code = #20048000
* group[=].element[=].target[=].display = "Laryngopharyngeal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #NASAL
* group[=].element[=].target[+].code = #20049000
* group[=].element[=].target[=].display = "Nasal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #NASALINSTIL
* group[=].element[=].target[+].code = #20049000
* group[=].element[=].target[=].display = "Nasal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, nasal use by means of instillation."
* group[=].element[+].code = #NASINHL
* group[=].element[=].target[+].code = #20049000
* group[=].element[=].target[=].display = "Nasal use"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "EDQM excludes nasal inhalation intended to target the lower respiratory tract (which should be inhalation use instead). Assuming that these are normaly oral and not nasal, it could be safe enough to use this mapping to nasal use for these cases."
* group[=].element[+].code = #OPTHALTA
* group[=].element[=].target[+].code = #20051000
* group[=].element[=].target[=].display = "Ocular use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ORINHL
* group[=].element[=].target[+].code = #20020000
* group[=].element[=].target[=].display = "Inhalation use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #ORMUC
* group[=].element[=].target[+].code = #20054000
* group[=].element[=].target[=].display = "Oromucosal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #ORMUCSP
* group[=].element[=].target[+].code = #20054000
* group[=].element[=].target[=].display = "Oromucosal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, oromucosal use by means of spraying a medicinal product."
* group[=].element[+].code = #OROPHARTA
* group[=].element[=].target[+].code = #20055000
* group[=].element[=].target[=].display = "Oropharyngeal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, oropharyngeal use by means of spraying a medicinal product."
* group[=].element[+].code = #OT
* group[=].element[=].target[+].code = #20001000
* group[=].element[=].target[=].display = "Auricular use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, auricular use by means of instillation."
* group[=].element[+].code = #PAINJ
* group[=].element[=].target[+].code = #20057000
* group[=].element[=].target[=].display = "Periarticular use"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #PDONTTA
* group[=].element[=].target[+].code = #20059000
* group[=].element[=].target[=].display = "Periodontal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #PERIOSS
* group[=].element[=].target[+].code = #20059300
* group[=].element[=].target[=].display = "Periosseous use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #PNINFUS
* group[=].element[=].target[+].code = #20058000
* group[=].element[=].target[=].display = "Perineural use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, perineural use by means of infusion."
* group[=].element[+].code = #PNINJ
* group[=].element[=].target[+].code = #20058000
* group[=].element[=].target[=].display = "Perineural use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, perineural use by means of injection."
* group[=].element[+].code = #PO
* group[=].element[=].target[+].code = #20053000
* group[=].element[=].target[=].display = "Oral use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #POSTJUXTASC
* group[=].element[=].target[+].code = #20059500
* group[=].element[=].target[=].display = "Posterior juxtascleral use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #PTINJ
* group[=].element[=].target[+].code = #20059400
* group[=].element[=].target[=].display = "Peritumoral use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #RBINJ
* group[=].element[=].target[+].code = #20061500
* group[=].element[=].target[=].display = "Retrobulbar use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, retrobulbar use by means of injection."
* group[=].element[+].code = #RECTAL
* group[=].element[=].target[+].code = #20061000
* group[=].element[=].target[=].display = "Rectal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #SCARIFICAT
* group[=].element[=].target[+].code = #20063000
* group[=].element[=].target[=].display = "Skin scarification"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #SCINJ
* group[=].element[=].target[+].code = #20065000
* group[=].element[=].target[=].display = "Subconjunctival use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #SKIN
* group[=].element[=].target[+].code = #20003000
* group[=].element[=].target[=].display = "Cutaneous use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #SL
* group[=].element[=].target[+].code = #20067000
* group[=].element[=].target[=].display = "Sublingual use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #SQ
* group[=].element[=].target[+].code = #20066000
* group[=].element[=].target[=].display = "Subcutaneous use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, a subcutaneous use by means of injection."
* group[=].element[+].code = #SQIMPLNT
* group[=].element[=].target[+].code = #20015500
* group[=].element[=].target[=].display = "Implantation"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, a subcutaneous implantation."
* group[=].element[+].code = #SQINFUS
* group[=].element[=].target[+].code = #20066000
* group[=].element[=].target[=].display = "Subcutaneous use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, a subcutaneous use by means of infusion."
* group[=].element[+].code = #SRINJ
* group[=].element[=].target[+].code = #20081000
* group[=].element[=].target[=].display = "Subretinal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, subretinal use by means of injection."
* group[=].element[+].code = #SUBMUCINJ
* group[=].element[=].target[+].code = #20067500
* group[=].element[=].target[=].display = "Submucosal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #SUCK
* group[=].element[=].target[+].code = #20054000
* group[=].element[=].target[=].display = "Oromucosal use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, oromucosal use by means of sucking a medicinal product."
* group[=].element[+].code = #TRNSDERMD
* group[=].element[=].target[+].code = #20070000
* group[=].element[=].target[=].display = "Transdermal use"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #URETHINJ
* group[=].element[=].target[+].code = #20071000
* group[=].element[=].target[=].display = "Urethral use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, urethral use by means of injection."
* group[=].element[+].code = #URETHINSTL
* group[=].element[=].target[+].code = #20071000
* group[=].element[=].target[=].display = "Urethral use"
* group[=].element[=].target[=].equivalence = #subsumes
* group[=].element[=].target[=].comment = "The source code is, specifically, urethral use by means of instillation."
* group[=].element[+].code = #VAGINS
* group[=].element[=].target[+].code = #20072000
* group[=].element[=].target[=].display = "Vaginal use"
* group[=].element[=].target[=].equivalence = #equal

Instance: RouteOfAdministrationEDQMToCdTyp26
InstanceOf: ConceptMap
Title: "RouteOfAdministrationEDQM -> CdTyp26"
Description: "Mapping from RouteOfAdministrationEDQM route of administration codes to HCI CdTyp26 codes."
Usage: #definition
* name = "RouteOfAdministrationEDQMToCdTyp26"
* status = #draft
* experimental = true
* purpose = """This concept map provides guidance for implementers that use HCI Index product(s) internally to translate EDQM codes for routes of administration as used by the eMedication service to the HCI CdTyp26 equivalent.

This concept map does not - and could not possibly - provide a one to one match for every source code. Whenever possible, comments in this concept map provide further guidance on how to approach the translation of problematic items.            
"""
* sourceUri = "http://fhir.ch/ig/ch-term/ValueSet/edqm-routeofadministration"
* targetCanonical = $hciIndexRouteOfAdministrationTableUrl
* group[+].source = $edqm //EDQM Standard Terms system
* group[=].target = $hciIndexRouteOfAdministrationTableUrl
* group[=].element[+].code = #20001000
* group[=].element[=].target[+].code = #OT
* group[=].element[=].target[=].display = "Auricular (instillation)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any auricular use, while the target code is specifically auricular use by means of instillation. There is no other auricular use code in CdTyp26."
* group[=].element[+].code = #20002500
* group[=].element[=].target[+].code = #BUC
* group[=].element[=].target[=].display = "Buccal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20003000
* group[=].element[=].target[+].code = #SKIN
* group[=].element[=].target[=].display = "Topical"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20004000
* group[=].element[=].target[+].code = #DEN
* group[=].element[=].target[=].display = "Dental"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20006000
* group[=].element[=].target[+].code = #ENDOZERV
* group[=].element[=].target[=].display = "Endocervical"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20007000
* group[=].element[=].target[+].code = #ENDOSINUS
* group[=].element[=].target[=].display = "Endosinusial"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20008000
* group[=].element[=].target[+].code = #ET
* group[=].element[=].target[=].display = "Endotracheal"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "The source code is defined as endotracheopulmanory use, while the target code is endotracheal use."
* group[=].element[+].code = #20009000
* group[=].element[=].target[+].code = #EPI
* group[=].element[=].target[=].display = "Epidural (infusion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any epidural use, while the target code is specifically epidural use by means of infusion."
* group[=].element[+].code = #20009000
* group[=].element[=].target[+].code = #EPIDURINJ
* group[=].element[=].target[=].display = "Epidural (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any epidural use, while the target code is specifically epidural use by means of injection."
* group[=].element[+].code = #20010000
* group[=].element[=].target[+].code = #EPILESION
* group[=].element[=].target[=].display = "Epilesional"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20011000
* group[=].element[=].target[+].code = #EXTAMNIOINJ
* group[=].element[=].target[=].display = "Extraamniotic"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20011500
* group[=].element[=].target[+].code = #EXTCORP
* group[=].element[=].target[=].display = "Extracorporeal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20087000
* group[=].element[=].target[+].code = #EXTPLRINFUS
* group[=].element[=].target[=].display = "Extrapleural (instillation)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any injection of a medicinal product directly outside the pleural cavity, while the target code is specifically extrapleural use by means of an instillation. There is no other extrapleural use code in CdTyp26."
* group[=].element[+].code = #20013000
* group[=].element[=].target[+].code = #GT
* group[=].element[=].target[=].display = "Gastrointestinal (instillation)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any gastroenteral use, while the target code is specifically gastrointestinal use by means of instillation. There is no other gastroenteral use code in CdTyp26."
* group[=].element[+].code = #20013500
* group[=].element[=].target[+].code = #IGASTINSTIL
* group[=].element[=].target[=].display = "Intragastric (instillation)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any gastric use, while the target code is specifically intragastric use by means of instillation. There is no other gastric use code in CdTyp26."
* group[=].element[+].code = #20014000
* group[=].element[=].target[+].code = #GI
* group[=].element[=].target[=].display = "Gingival"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20015000
* group[=].element[=].target[+].code = #HEMODIFF
* group[=].element[=].target[=].display = "Haemodialysis (diffusion)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20015500
* group[=].element[=].target[+].code = #IMPLANTINSE
* group[=].element[=].target[=].display = "Implantation (insertion)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20019500
* group[=].element[=].target[+].code = #INFILTINJ
* group[=].element[=].target[=].display = "Infiltration (injection)"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20020000
* group[=].element[=].target[+].code = #ORINHL
* group[=].element[=].target[=].display = "Oral (inhalation)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "EDQM excludes nasal use from the inhalation use code."
* group[=].element[+].code = #20021000
* group[=].element[=].target[+].code = #GT
* group[=].element[=].target[=].display = "Gastrointestinal (instillation)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "The source code is any intestinal use, while the target code is any gastrointestinal use by means of instillation. There is no other intestinal use code in CdTyp26."
* group[=].element[+].code = #20022000
* group[=].element[=].target[+].code = #IAMNIOINJ
* group[=].element[=].target[=].display = "Intraamniotic (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20023000
* group[=].element[=].target[+].code = #IA
* group[=].element[=].target[=].display = "Intraarterial (infusion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intraarterial use, while the target code is specifically intraarterial use by means of infusion."
* group[=].element[+].code = #20023000
* group[=].element[=].target[+].code = #IAINJ
* group[=].element[=].target[=].display = "Intraarterial (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intraarterial use, while the target code is specifically auricular use by means of injection."
* group[=].element[+].code = #20024000
* group[=].element[=].target[+].code = #IARTINJ
* group[=].element[=].target[=].display = "Intraarticular"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20025000
* group[=].element[=].target[+].code = #IBURSINJ
* group[=].element[=].target[=].display = "Intrabursal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20025500
* group[=].element[=].target[+].code = #IKAMERAL
* group[=].element[=].target[=].display = "Intracameral"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20026000
* group[=].element[=].target[+].code = #ICARDINJ
* group[=].element[=].target[=].display = "Intracardiac (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20026500
* group[=].element[=].target[+].code = #IKARTILAG
* group[=].element[=].target[=].display = "Intracartilaginous"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20027000
* group[=].element[=].target[+].code = #ICORPCAVINJ
* group[=].element[=].target[=].display = "Intracavernous"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20027010
* group[=].element[=].target[+].code = #ICEREBRAL
* group[=].element[=].target[=].display = "Intracerebral"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20028000
* group[=].element[=].target[+].code = #ICERVICAL
* group[=].element[=].target[=].display = "Intracervical (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20028300
* group[=].element[=].target[+].code = #ICHOLANGIOP
* group[=].element[=].target[=].display = "Intracholangiopancreatic (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20028500
* group[=].element[=].target[+].code = #ICISTERN
* group[=].element[=].target[=].display = "Intracisternal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20029000
* group[=].element[=].target[+].code = #ICORONINJ
* group[=].element[=].target[=].display = "Intracoronary (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20030000
* group[=].element[=].target[+].code = #IDINJ
* group[=].element[=].target[=].display = "Intradermal (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20031000
* group[=].element[=].target[+].code = #IDISCINJ
* group[=].element[=].target[=].display = "Intradiscal (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20031500
* group[=].element[=].target[+].code = #IEPIDERMAL
* group[=].element[=].target[=].display = "Intraepidermal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20031700
* group[=].element[=].target[+].code = #IGLANDINJ
* group[=].element[=].target[=].display = "Intraglandular (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20032000	
* group[=].element[=].target[+].code = #ILES
* group[=].element[=].target[=].display = "Intralesional"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20033000
* group[=].element[=].target[+].code = #ILYMPJINJ
* group[=].element[=].target[=].display = "Intralymphatic"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20035000
* group[=].element[=].target[+].code = #IM
* group[=].element[=].target[=].display = "Intramuscular (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20036000
* group[=].element[=].target[+].code = #IOINJ
* group[=].element[=].target[=].display = "Intraocular (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intraocular use, while the target code is specifically intraocular use by means of injection."
* group[=].element[+].code = #20036000
* group[=].element[=].target[+].code = #IOINSTIL
* group[=].element[=].target[=].display = "Intraocular (instillation)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intraocular use, while the target code is specifically intraocular use by means of instillation."
* group[=].element[+].code = #20036500
* group[=].element[=].target[+].code = #IOSSINJ
* group[=].element[=].target[=].display = "Intraosseous (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20037000
* group[=].element[=].target[+].code = #IPERICARDIN
* group[=].element[=].target[=].display = "Intrapericardial (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20038000
* group[=].element[=].target[+].code = #IPDP
* group[=].element[=].target[=].display = "Intraperitoneal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20039000
* group[=].element[=].target[+].code = #IPLRINJ
* group[=].element[=].target[=].display = "Intrapleural"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20039200
* group[=].element[=].target[+].code = #IPORTAL
* group[=].element[=].target[=].display = "Intraportal (infusion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intraportal use, while the target code is specifically intraportal use by means of infusion."
* group[=].element[+].code = #20039200
* group[=].element[=].target[+].code = #IPORTALINJ
* group[=].element[=].target[=].display = "Intraportal (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intraportal use, while the target code is specifically intraportal use by means of injection."
* group[=].element[+].code = #20039500
* group[=].element[=].target[+].code = #IPROSTAT
* group[=].element[=].target[=].display = "Intraprostatic"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20041000
* group[=].element[=].target[+].code = #ISTERNALINJ
* group[=].element[=].target[=].display = "Intrasternal (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20042000
* group[=].element[=].target[+].code = #IT
* group[=].element[=].target[=].display = "Intrathecal (infusion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intrathecal use, while the target code is specifically intrathecal use by means of infusion."
* group[=].element[+].code = #20042000
* group[=].element[=].target[+].code = #ITINJ
* group[=].element[=].target[=].display = "Intrathecal (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intrathecal use, while the target code is specifically intrathecal use by means of injection."
* group[=].element[+].code = #20043000
* group[=].element[=].target[+].code = #ITUMINJ
* group[=].element[=].target[=].display = "Intratumoral"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20044000
* group[=].element[=].target[+].code = #IU
* group[=].element[=].target[=].display = "Intrauterine (insertion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intrauterine use, while the target code is specifically intrauterine use by means of insertion. Arguably, an insertion in EDQM would be an \"Implantation\" use, instead of an intrauterine use, so the this mapping element could be ignored."
* group[=].element[+].code = #20044000
* group[=].element[=].target[+].code = #IUINJ
* group[=].element[=].target[=].display = "Intrauterine (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intrauterine use, while the target code is specifically intrauterine use by means of injection."
* group[=].element[+].code = #20045000
* group[=].element[=].target[+].code = #IV
* group[=].element[=].target[=].display = "Intravenous (infusion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intravenous use, while the target code is specifically intravenous use by means of infusion."
* group[=].element[+].code = #20045000
* group[=].element[=].target[+].code = #IVINJ
* group[=].element[=].target[=].display = "Intravenous (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intravenous use, while the target code is specifically intravenous use by means of injection."
* group[=].element[+].code = #20046000
* group[=].element[=].target[+].code = #BLADINJ
* group[=].element[=].target[=].display = "Intravesical (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intravesical use, while the target code is specifically intravesical use by means of injection."
* group[=].element[+].code = #20046000
* group[=].element[=].target[+].code = #BLADINSTL
* group[=].element[=].target[=].display = "Intravesical (instillation)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intravesical use, while the target code is specifically intravesical use by means of instillation."
* group[=].element[+].code = #20047000
* group[=].element[=].target[+].code = #IVITINJ
* group[=].element[=].target[=].display = "Intravitreal (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any intravitreal use, while the target code is specifically intravitreal use by means of injection. There is no other intravitreal use code in CdTyp26."
* group[=].element[+].code = #20047500
* group[=].element[=].target[+].code = #IONTOPHORES
* group[=].element[=].target[=].display = "Iontophoresis"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20048000
* group[=].element[=].target[+].code = #LARYNGOPHAR
* group[=].element[=].target[=].display = "Laryngopharingeal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20049000
* group[=].element[=].target[+].code = #NASAL
* group[=].element[=].target[=].display = "Nasal"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20051000
* group[=].element[=].target[+].code = #OPTHALTA
* group[=].element[=].target[=].display = "Ophthalmic"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20053000
* group[=].element[=].target[+].code = #PO
* group[=].element[=].target[=].display = "Peroral (swallow)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Note that, while EDQM has only a oral code for swallowing a medication, CdTyp26 has more granularity and allows to specify oral uses via chewing or sucking, which ultimatiately would be swallowed."
* group[=].element[+].code = #20054000
* group[=].element[=].target[+].code = #ORMUC
* group[=].element[=].target[=].display = "Oromucosal"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20055000
* group[=].element[=].target[+].code = #GARGLE
* group[=].element[=].target[=].display = "Oropharyngeal (gargle)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any oropharyngeal use, while the target code is specifically oropharyngeal use by means of gargling."
* group[=].element[+].code = #20055000
* group[=].element[=].target[+].code = #OROPHARTA
* group[=].element[=].target[=].display = "Oropharyngeal (spray)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any oropharyngeal use, while the target code is specifically oropharyngeal use by means of spraying a medicinal product."
* group[=].element[+].code = #20057000
* group[=].element[=].target[+].code = #PAINJ
* group[=].element[=].target[=].display = "Periarticular"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20058000
* group[=].element[=].target[+].code = #PNINFUS
* group[=].element[=].target[=].display = "Perineural (infusion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any perineural use, while the target code is specifically perineural use by means of infusion."
* group[=].element[+].code = #20058000
* group[=].element[=].target[+].code = #PNINJ
* group[=].element[=].target[=].display = "Perineural (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any perineural use, while the target code is specifically perineural use by means of injection."
* group[=].element[+].code = #20059000
* group[=].element[=].target[+].code = #PDONTTA
* group[=].element[=].target[=].display = "Periodontal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20059300
* group[=].element[=].target[+].code = #PERIOSS
* group[=].element[=].target[=].display = "Periosseous"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20059400
* group[=].element[=].target[+].code = #PTINJ
* group[=].element[=].target[=].display = "Peritumoral"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20059500
* group[=].element[=].target[+].code = #POSTJUXTASC
* group[=].element[=].target[=].display = "Posterior juxtascleral"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20061000
* group[=].element[=].target[+].code = #RECTAL
* group[=].element[=].target[=].display = "Rectal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20061500
* group[=].element[=].target[+].code = #RBINJ
* group[=].element[=].target[=].display = "Retrobulbar (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any retrobulbar use, while the target code is specifically retrobulbar use by means of instillation. There is no other retrobulbar use code in CdTyp26."
* group[=].element[+].code = #20062000
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[+].code = #20063000
* group[=].element[=].target[+].code = #SCARIFICAT
* group[=].element[=].target[=].display = "Scarification"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20065000
* group[=].element[=].target[+].code = #SCINJ
* group[=].element[=].target[=].display = "Subconjunctival (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20066000
* group[=].element[=].target[+].code = #SQ
* group[=].element[=].target[=].display = "Subcutaneous (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any subcuteaneous use, understood as the injection of a medicinal product directly underneath the skin, while the target code is specifically subcutaneous use by means of injection."
* group[=].element[+].code = #20066000
* group[=].element[=].target[+].code = #SQIMPLNT
* group[=].element[=].target[=].display = "Subcutaneous (implantation)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "While the source code is any subcuteaneous use, understood as the injection of a medicinal product directly underneath the skin, EDQM has a different code for Implantation as a route of administration."
* group[=].element[+].code = #20066000
* group[=].element[=].target[+].code = #SQINFUS
* group[=].element[=].target[=].display = "Subcutaneous (infusion)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any subcutaneous use, while the target code is specifically subcutaneous use by means of infusion. EDQM routes of administration do not make a difference between injection and infusion."
* group[=].element[+].code = #20067000
* group[=].element[=].target[+].code = #SL
* group[=].element[=].target[=].display = "Sublingual"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20067500	
* group[=].element[=].target[+].code = #SUBMUCINJ
* group[=].element[=].target[=].display = "Submucosal (injection)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #20070000
* group[=].element[=].target[+].code = #TRNSDERMD
* group[=].element[=].target[=].display = "Transdermal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20071000
* group[=].element[=].target[+].code = #URETHINJ
* group[=].element[=].target[=].display = "Urethral (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any urethral use, while the target code is specifically urethral use by means of injection."
* group[=].element[+].code = #20071000
* group[=].element[=].target[+].code = #URETHINSTL
* group[=].element[=].target[=].display = "Urethral (instillation)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any urethral use, while the target code is specifically urethral use by means of instillation."
* group[=].element[+].code = #20072000
* group[=].element[=].target[+].code = #VAGINS
* group[=].element[=].target[=].display = "Vaginal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20080000
* group[=].element[=].target[+].code = #IVENTCERE
* group[=].element[=].target[=].display = "Cerebral intraverticular"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20081000
* group[=].element[=].target[+].code = #SRINJ
* group[=].element[=].target[=].display = "Subretinal (injection)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[=].comment = "The source code is any subretinal use, while the target code is specifically subretinal use by means of injection. There is no other subretinal use code in CdTyp26."
* group[=].element[+].code = #20084000
* group[=].element[=].target[+].code = #ICORNEAL
* group[=].element[=].target[=].display = "Intracorneal"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #20086000
* group[=].element[=].target[+].code = #IPUTAMINAL
* group[=].element[=].target[=].display = "Intraputaminal"
* group[=].element[=].target[=].equivalence = #equal
