RuleSet: resource-ruleset
* meta insert meta-ruleset
* implicitRules 0..0 // It's a modifier
* implicitRules ^comment = "...All implicit rules SHALL be documented"


RuleSet: domain-resource-ruleset
* insert resource-ruleset
* modifierExtension 0..0 // It's a modifier
* modifierExtension ^comment = "...All modifier extensions SHALL be documented"


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


RuleSet: problematic-reference(path)
* {path} ..0 // TODO: don't forbid it?
* {path} D
* {path} ^comment = "Unsupported reference. It'll be stripped when generating PML(C) documents."


RuleSet: problematic-extension-reference
* extension ^comment = "Extensions that contain a reference will be stripped when generating PML(C) documents."
