### CodeableConcept

A codeable concept is a concept that can be expressed with codes from code systems.
It can contain zero, one or more codings.

Implementers:

- SHALL support the `text` attribute and MAY support the codings, depending on the code systems that are used.
- SHOULD use a language understandable by the patient when setting the `text` attribute.
- SHOULD show the `text` attribute to the user, and MAY add information about the different codings used.
- SHOULD support the codings when a required value set is defined, and MAY support other codings.


### Coding

It represents a code in a code system.


The `system` SHOULD be a public code system, not a private one (e.g. internal to a specific organization, or undocumented); it would not have any interoperability value.

The `display` MAY be used but is not mandatory; it should be one of the display names defined by the value set.
The `version` is not used, code system versioning is hard.

