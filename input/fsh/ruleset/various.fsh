RuleSet: SimpleCoding
* extension                 0..0
* version                   0..0
* userSelected              0..0
* id                        0..0

RuleSet: SimpleIdentifier
* assigner                  0..0
* period                    0..0
* type                      0..0
* id                        0..0
* extension                 0..0

RuleSet: SimpleCodeableConcept
* id                        0..0
* extension                 0..0

RuleSet: NoMetaExceptProfile
* id                        0..0
* extension                 0..0
* versionId                 0..0
* lastUpdated               0..0
* source                    0..0
* security                  0..0
* tag                       0..0

RuleSet: ReasonCode
* insert SimpleCodeableConcept
* coding                    0..0 // TODO we may want this
* text                      1..1
* text                      ^short = "Plain text representation of the treatment reason(s)"

