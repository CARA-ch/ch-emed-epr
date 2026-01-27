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
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234438"
* name.family = "Cox"
* name.given = "Perry"

Instance: PractitionerRoleDoeAtPharmaSI
InstanceOf: CHEMEDEPRPractitionerRole
Title: "PractitionerRole: John Doe @ PharmaSI"
Description: "The example of a pharmacist practitioner role, linking a pharmacist (practitioner) to a pharmacy example organization."
Usage: #example
* practitioner = Reference(urn:uuid:37310437-d3bb-48a2-b2f2-a3f0e41440c7)
* organization = Reference(urn:uuid:7ba4c339-2731-4ac9-9fe2-8eabcce3d9eb)

Instance: PharmacistDoe
InstanceOf: CHEMEDEPRPractitioner
Title: "Pharmacist: John Doe"
Description: "The example of a pharmacist"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601234567890"
* name.family = "Doe"
* name.given = "John"