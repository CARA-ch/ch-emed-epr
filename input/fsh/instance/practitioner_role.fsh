Instance: PractitionerRoleCoxAtHug
InstanceOf: CHEMEDEPRPractitionerRole
Title: "PractitionerRole: Perry Cox @ HUG"
Description: "The example of a practitioner role, linking a practitioner to an organization"
Usage: #example
* practitioner.reference = "urn:uuid:9fc8530b-b77d-4b53-8a21-fc786b697edf"
* organization.reference = "urn:uuid:580fbe82-8734-4edf-ad4b-48124cdd03c6"


Instance: PractitionerCox
InstanceOf: CHEMEDEPRPractitioner
Title: "Practitioner: Perry Cox"
Description: "The example of a practitioner"
Usage: #example
* identifier[+].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000234438"
* name.family = "Cox"
* name.given = "Perry"