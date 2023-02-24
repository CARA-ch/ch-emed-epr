### CodeableConcept

[CodeableConcept](https://hl7.org/fhir/datatypes.html#CodeableConcept).
A codeable concept is a concept that can be expressed with codes from code systems.
It can contain zero, one or more codings.

There are two uses for them, for human use (e.g. the route of administration) and for computer use (e.g. the composition type).
The first one has a mandatory `text` element, while the second one has it optional.

For human use, implementers:

- SHALL support the `text` attribute and MAY support the codings, depending on the code systems that are used.
- SHOULD use a language understandable by the patient when setting the `text` attribute.
- SHOULD show the `text` attribute to the user, and MAY add information about the different codings used.
- SHOULD support the codings when a required value set is defined, and MAY support other codings.

For computer use, implementers:

- SHOULD ignore the `text` attribute.
- SHALL support the codings (there are only a few values authorized in this case).

### Coding

[Coding](https://hl7.org/fhir/datatypes.html#Coding).
It represents a code in a code system.


The `system` SHOULD be a public code system, not a private one (e.g. internal to a specific organization, or undocumented); it would not have any interoperability value.

The `display` MAY be used but is not mandatory; it should be one of the display names defined by the value set.
The `version` is not used, code system versioning is hard.

### date

[date](https://hl7.org/fhir/datatypes.html#date).
Please only use [xs:date](https://www.w3.org/TR/xmlschema-2/#date) (i.e. `YYYY-MM-DD`), unless you have a very good reason to be less precise than that.

### dateTime

[dateTime](https://hl7.org/fhir/datatypes.html#dateTime).
Please only use [xs:dateTime](https://www.w3.org/TR/xmlschema-2/#dateTime) with timezone (i.e. `YYYY-MM-DDThh:mm:ss+zz:zz` or `YYYY-MM-DDThh:mm:ssZ`),
unless you have a very good reason to be less precise than that.

In some cases, the recommendation is to only use [xs:date](https://www.w3.org/TR/xmlschema-2/#date) (i.e. `YYYY-MM-DD`)
for example with dosage period start and stop dates, where the precision usually is to the day.

### Date completion

When encountering an incomplete date, it can be completed as follows:

- if it is the inclusive stop date of a period, then it is completed as the last instant covered by the partial date;
- in other cases (simple date, inclusive start date, exclusive stop date), it is completed as the first instant covered by the partial date.
