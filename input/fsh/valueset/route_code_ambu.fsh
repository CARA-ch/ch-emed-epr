ValueSet: CHEMEDEPRRouteOfAdministration
Id: ch-emed-epr-route-of-administration
Title: "CH EMED EPR Route of Administration"
Description: """Valueset RouteOfAdministration filtered for ambulatory care use.

This value set is a subset of the mandatory value set ([EDQM - RouteOfAdministration](http://fhir.ch/ig/ch-emed/ValueSet-edqm-routeofadministration.html)) that contains only values compatible with ambulatory care.
We recommend implementers to focus on supporting this value set instead of the complete one."""

* ^experimental = true
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

*  $edqm#20001000 "Auricular use"
// TODO