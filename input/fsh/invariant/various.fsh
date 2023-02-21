Invariant: urn-uuid-invariant
Description: "The value shall be an URN-encoded UUID ('urn:uuid:00000000-0000-0000-0000-000000000000')"
Expression: "$this.matches('^urn:uuid:[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$')"
Severity: #error

Invariant: datetime-only-instant-invariant
Description: "The dateTime shall be an instant ('YYYY-MM-DDThh:mm:ss+zz:zz' or 'YYYY-MM-DDThh:mm:ssZ')"
Expression: "$this.toString().matches('([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\\\.[0-9]+)?(Z|(\\\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))')"
Severity: #error
// Regex is from http://hl7.org/fhir/R4/datatypes.html#instant
