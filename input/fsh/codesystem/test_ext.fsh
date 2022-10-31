/*RuleSet: composition-ruleset
Parent: Composition
Severity: #error
Id: composition-rule-set

* confidentiality insert codeableconcept-ruleset
* confidentiality.code = #17621005
* confidentiality.system = $sct
* include codes from system $SCT where concept is-a #367651003 "Malignant"
* insert composition-ruleset
* insert Name(Robert, Smith)
* name obeys us-core-8
* obeys us-core-9 and us-core-8 and codeableconcept-ruleset
* action.definition[x] only Canonical(ActivityDefinition or PlanDefinition or Patient)
* performer only Reference(PrimaryCarePhysician or EmergencyRoomPhysician)
* ^context[0].type = #element
* text ^short = "Plain text representation"
* statusReason 0..12
* statusReason 0..*
*/