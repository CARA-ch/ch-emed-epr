RuleSet: resource-ruleset
* meta insert meta-ruleset
* insert modifier(implicitRules)


RuleSet: domain-resource-ruleset
* insert resource-ruleset
* insert modifier(modifierExtension)


RuleSet: backbone-ruleset
* insert modifier(modifierExtension)


RuleSet: coding-ruleset
* insert no-support(extension)
* insert no-support(version)
* insert no-support(userSelected)

RuleSet: identifier-ruleset
* insert no-support(assigner)
* assigner only Reference(CHEMEDEPROrganization)
* insert no-support(period)
* insert no-support(type)
* insert no-support(extension)


RuleSet: codeableconcept-ruleset
* insert no-support(extension)


RuleSet: codeableconcept-with-text-ruleset
* insert codeableconcept-ruleset
* text 1..1 // TODO #16


RuleSet: meta-ruleset
* insert no-support(extension)
* insert no-support(versionId)
* insert no-support(lastUpdated)
* insert no-support(source)
* insert no-support(security) // No security concept
* insert no-support(tag)


RuleSet: reason-code-ruleset
* insert codeableconcept-ruleset
* text 1..1
* text ^short = "Plain text representation of the treatment reason(s)"


RuleSet: problematic-reference(path)
* {path} D
* {path} ^short = "✕ This element will be removed in PML(C) documents"
* {path} ^comment = "✕ Unsupported reference. It'll be stripped when generating PML(C) documents."


RuleSet: problematic-extension-reference
* extension ^comment = "⚠ Extensions that contain a reference will be stripped when generating PML(C) documents."


RuleSet: modifier(path)
* {path} 0..0
* {path} ^comment = "...All modifiers SHALL be documented in the profile, in order to be usable."


RuleSet: overridden(path)
* {path} D
* {path} ^short = "✕ This element may be overridden in PML(C) documents"
* {path} ^comment = "...⚠ This value may be overridden when generating PML(C) documents.
It is recommended not to set this value because its value will change when retrieved in a PML/PMLC document."


RuleSet: no-support(path)
* {path} D
* {path} ^short = "✕ This element is not supported"
* {path} ^definition = """Implementers should not set or read this element. 
This element is only kept as optional to allow submission of documents that would contain a value, 
since those documents are still readable by others.
The meaning of this element is undefined in this profile."""

RuleSet: base-note-ruleset
* note.text ^short = "The annotation text content (as raw text, no markdown allowed)."
* insert no-support(note.id)
* insert no-support(note.extension)

RuleSet: note-ruleset
* insert base-note-ruleset
* insert no-support(note.author[x])
* note.author[x] ^short = "✕ The note author is ignored, as it cannot be different than the document and/or entry's author"
* insert no-support(note.time)

RuleSet: enforce-valid-gln
* value obeys gln-length-error and gln-modulus-10-error and gln-startswith76-error

RuleSet: enforce-valid-ahvn13
* value obeys ahvn13-digit-check-error and ahvn13-length-error and ahvn13-startswith756-error

RuleSet: enforce-valid-epr-spid
* value obeys epr-spid-length-error and epr-spid-modulus-10-error and epr-spid-startswith76133761-error

RuleSet: enforce-valid-veka
* value obeys veka-length-error and veka-startswith807560-error