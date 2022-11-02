RuleSet: resource-ruleset
* meta insert meta-ruleset
* implicitRules 0..0 // It's a modifier
* implicitRules ^short = "All implicit rules SHALL be documented"


RuleSet: domain-resource-ruleset
* insert resource-ruleset
* modifierExtension 0..0 // It's a modifier
* modifierExtension ^short = "All modifier extensions SHALL be documented"


RuleSet: coding-ruleset
* extension D
* version D
* userSelected D
* id D


RuleSet: identifier-ruleset
* assigner D
* period D
* type D
* id D
* extension D


RuleSet: codeableconcept-ruleset
* id D
* extension D


RuleSet: meta-ruleset
* id D
* extension D
* versionId D
* lastUpdated D
* source D
* security 0..0 // No security concept
* tag D


RuleSet: reason-code-ruleset
* insert codeableconcept-ruleset
* coding D
* text 1..1
* text ^short = "Plain text representation of the treatment reason(s)"
