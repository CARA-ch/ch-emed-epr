Invariant: UrnUuid
Description: "The value shall be an URN-encoded UUID"
Expression: "$this.matches('^urn:uuid:[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$')"
Severity: #error
