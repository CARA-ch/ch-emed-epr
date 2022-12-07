RuleSet: resource-ruleset
* meta insert meta-ruleset
* insert modifier(implicitRules)


RuleSet: domain-resource-ruleset
* insert resource-ruleset
* insert modifier(modifierExtension)


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
* {path} D
* {path} ^comment = "Unsupported reference. It'll be stripped when generating PML(C) documents."


RuleSet: problematic-extension-reference
* extension ^comment = "Extensions that contain a reference will be stripped when generating PML(C) documents."


RuleSet: modifier(path)
* {path} 0..0
* {path} ^comment = "...All modifiers SHALL be documented."


RuleSet: overridden(path)
* {path} D
* {path} ^comment = "...This value may be overridden when generating PML(C) documents."