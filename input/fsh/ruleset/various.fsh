RuleSet: resource-ruleset
* meta insert meta-ruleset
* insert modifier(implicitRules)


RuleSet: domain-resource-ruleset
* insert resource-ruleset
* insert modifier(modifierExtension)


RuleSet: coding-ruleset
* insert no-support(extension)
* insert no-support(version)
* insert no-support(userSelected)
* insert no-support(id)


RuleSet: identifier-ruleset
* insert no-support(assigner)
* insert no-support(period)
* insert no-support(type)
* insert no-support(id)
* insert no-support(extension)


RuleSet: codeableconcept-ruleset
* insert no-support(id)
* insert no-support(extension)


RuleSet: meta-ruleset
* insert no-support(id)
* insert no-support(extension)
* insert no-support(versionId)
* insert no-support(lastUpdated)
* insert no-support(source)
* security 0..0 // No security concept
* insert no-support(tag)


RuleSet: reason-code-ruleset
* insert codeableconcept-ruleset
* insert no-support(coding)
* text 1..1
* text ^short = "Plain text representation of the treatment reason(s)"


RuleSet: problematic-reference(path)
* {path} D
* {path} ^short = "This element is unreliable"
* {path} ^comment = "Unsupported reference. It'll be stripped when generating PML(C) documents."


RuleSet: problematic-extension-reference
* extension ^comment = "Extensions that contain a reference will be stripped when generating PML(C) documents."


RuleSet: modifier(path)
* {path} 0..0
* {path} ^comment = "...All modifiers SHALL be documented in the profile, in order to be usable."


RuleSet: overridden(path)
* {path} D
* {path} ^short = "✕"
* {path} ^comment = "...This value may be overridden when generating PML(C) documents.
It is recommended not to set this value because its value will change when retrieved in a PML/PMLC document."

RuleSet: no-support(path)
* {path} D
* {path} ^short = "✕"
* {path} ^definition = """Implementers should not set or read this element. 
This element is only kept as optional to allow submission of documents that would contain a value, 
since those documents are still readable by others.
The meaning of this element is undefined in this profile."""
