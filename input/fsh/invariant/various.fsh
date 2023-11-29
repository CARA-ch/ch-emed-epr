Invariant: urn-uuid-invariant
Description: "The value shall be an URN-encoded UUID ('urn:uuid:00000000-0000-0000-0000-000000000000')"
Expression: "$this.matches('^urn:uuid:[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$')"
Severity: #error

Invariant: datetime-only-instant-invariant
Description: "The dateTime shall be an instant ('YYYY-MM-DDThh:mm:ss+zz:zz' or 'YYYY-MM-DDThh:mm:ssZ')"
Expression: "$this.toString().matches('^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\\\.[0-9]+)?(Z|(\\\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$')"
Severity: #error
// Regex is from http://hl7.org/fhir/R4/datatypes.html#instant


/*
 * BEGIN "Overridden" invariants from CH Core: since we cannot extend/inherit from invariants to change their severity, we must define the same invariants again.
 * These are not in fact overridden, but just repeated with a different severity and explicitly added to CH EMED EPR profiles.
*/
Invariant: gln-length-error
Description: "GLN must be exactly 13 characters long"
Severity: #error
Expression: "matches('^[0-9]{13}$')"

Invariant: gln-modulus-10-error
Description: "GLN must pass the modulus 10 check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #error
Expression: "(((10-((substring(0,1).toInteger()*1)+(substring(1,1).toInteger()*3)+(substring(2,1).toInteger()*1)+(substring(3,1).toInteger()*3)+(substring(4,1).toInteger()*1)+(substring(5,1).toInteger()*3)+(substring(6,1).toInteger()*1)+(substring(7,1).toInteger()*3)+(substring(8,1).toInteger()*1)+(substring(9,1).toInteger()*3)+(substring(10,1).toInteger()*1)+(substring(11,1).toInteger()*3))mod(10))mod(10))=substring(12,1).toInteger())"

Invariant: gln-startswith76-error
Description: "GLN must start with 76 for Swiss HCP"
Severity: #error
Expression: "startsWith('76')"

Invariant: ahvn13-digit-check-error
Description: "AHVN13 / NAVS13 must pass digit check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #error
Expression: "(((10-(28+(substring(3,1).toInteger()*3)+(substring(4,1).toInteger()*1)+(substring(5,1).toInteger()*3)+(substring(6,1).toInteger()*1)+(substring(7,1).toInteger()*3)+(substring(8,1).toInteger()*1)+(substring(9,1).toInteger()*3)+(substring(10,1).toInteger()*1)+(substring(11,1).toInteger()*3))mod(10))mod(10))=substring(12,1).toInteger())"

Invariant: ahvn13-length-error
Description: "AHVN13 / NAVS13 must be exactly 13 characters long"
Severity: #error
Expression: "matches('^[0-9]{13}$')"

Invariant: ahvn13-startswith756-error
Description: "AHVN13 / NAVS13 must start with 756"
Severity: #error
Expression: "startsWith('756')"

Invariant: epr-spid-length-error
Description: "EPR-SPID must be exactly 18 characters long"
Severity: #error
Expression: "matches('^[0-9]{18}$')"

Invariant: epr-spid-modulus-10-error
Description: "EPR-SPID must pass the modulus 10 check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #error
Expression: "(((10-((68+(substring(8,1).toInteger()*3)+(substring(9,1).toInteger()*1)+(substring(10,1).toInteger()*3)+(substring(11,1).toInteger()*1)+(substring(12,1).toInteger()*3)+(substring(13,1).toInteger()*1)+(substring(14,1).toInteger()*3)+(substring(15,1).toInteger()*1)+(substring(16,1).toInteger()*3))mod(10)))mod(10))=substring(17,1).toInteger())"

Invariant: epr-spid-startswith76133761-error
Description: "EPR-SPID must start with 76133761"
Severity: #error
Expression: "startsWith('76133761')"

Invariant: veka-length-error
Description: "Insurance card number must be exactly 20 characters long"
Severity: #error
Expression: "matches('^[0-9]{20}$')"

Invariant: veka-startswith807560-error
Description: "Insurance card number must start with 807560"
Severity: #error
Expression: "startsWith('807560')"
/*
 * END "overridden" invariants.
*/