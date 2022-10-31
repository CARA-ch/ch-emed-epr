RuleSet: coding-ruleset
* extension 0..0
* version 0..0
* userSelected 0..0
* id 0..0


RuleSet: identifier-ruleset
* assigner 0..0
* period 0..0
* type 0..0
* id 0..0
* extension 0..0


RuleSet: codeableconcept-ruleset
* id 0..0
* extension 0..0


RuleSet: meta-ruleset
* id 0..0
* extension 0..0
* versionId 0..0
* lastUpdated 0..0
* source 0..0
* security 0..0
* tag 0..0


RuleSet: reason-code-ruleset
* insert codeableconcept-ruleset
* coding 0..0 // TODO we may want this
* text 1..1
* text ^short = "Plain text representation of the treatment reason(s)"

