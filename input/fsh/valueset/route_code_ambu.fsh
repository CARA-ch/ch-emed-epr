ValueSet: CHEMEDEPRRouteOfAdministration
Id: ch-emed-epr-route-of-administration
Title: "Route of Administration"
Description: """Valueset RouteOfAdministration filtered for ambulatory care use.

This value set is a subset of the mandatory value set ([EDQM - RouteOfAdministration](http://fhir.ch/ig/ch-term/ValueSet/edqm-routeofadministration)) that contains only values compatible with ambulatory care.
We recommend implementers to focus on supporting this value set instead of the complete one."""

* ^experimental = true
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* $edqm#20001000 "Auricular use"
* $edqm#20002500 "Buccal use"
* $edqm#20003000 "Cutaneous use"
* $edqm#20004000 "Dental use"
* $edqm#20008000 "Endotracheopulmonary use"
* $edqm#20010000 "Epilesional use"
* $edqm#20013500 "Gastric use"
* $edqm#20013000 "Gastroenteral use"
* $edqm#20014000 "Gingival use"
* $edqm#20015000 "Haemodialysis"
* $edqm#20020000 "Inhalation use"
* $edqm#20021000 "Intestinal use"
* $edqm#20031500 "Intraepidermal use"
* $edqm#20032000 "Intralesional use"
* $edqm#20035000 "Intramuscular use"
* $edqm#20039000 "Intrapleural use"
* $edqm#20044000 "Intrauterine use"
* $edqm#20045000 "Intravenous use"
* $edqm#20046000 "Intravesical use"
* $edqm#20049000 "Nasal use"
* $edqm#20051000 "Ocular use"
* $edqm#20053000 "Oral use"
* $edqm#20054000 "Oromucosal use"
* $edqm#20055000 "Oropharyngeal use"
* $edqm#20061000 "Rectal use"
* $edqm#20066000 "Subcutaneous use"
* $edqm#20067000 "Sublingual use"
* $edqm#20070000 "Transdermal use"
* $edqm#20071000 "Urethral use"
* $edqm#20072000 "Vaginal use"
