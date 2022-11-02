RuleSet: observation-ruleset

* insert domain-resource-ruleset

// Upstream

// Restrictions
// TODO Ref MTP or PRE or DIS
// TODO medicationStatementChanged ?
* issued 1..1

// Disable unused parts
* basedOn 0..0
* partOf 0..0
* category 0..0
* focus 0..0
* encounter 0..0
* value[x] 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0

// Documentation
* note.text ^short = "The annotation text content (as raw text, no markdown allowed)."
