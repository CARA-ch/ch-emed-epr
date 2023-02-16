# Datatypes

## CodeableConcept

A codeable concept is a concept that can be expressed with codes from code systems.
It can contain zero, one or more Codings.

Implementers SHALL support the `text` attribute and MAY support the Codings, depending on the code systems that are used.


## Coding

It represents a code in a code system.


The `system` SHOULD be a public code system, not a private one (e.g. internal to a specific organization, or undocumented); it would not have any interoperability value.

The `display` MAY be used but is not mandatory.
The `version` is not used, code system versioning is hard.

