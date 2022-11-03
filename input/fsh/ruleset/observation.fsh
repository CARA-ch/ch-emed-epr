RuleSet: observation-ruleset

* insert domain-resource-ruleset

// TODO Ref MTP or PRE or DIS
// TODO medicationStatementChanged ?
* issued 1..1
* basedOn D
* partOf D
* category D
* focus D
* encounter D
* value[x] D
* dataAbsentReason D
* interpretation D
* bodySite D
* method D
* specimen D
* device D
* referenceRange D
* hasMember D
* derivedFrom D
* component D

* note.text ^short = "The annotation text content (as raw text, no markdown allowed)."
