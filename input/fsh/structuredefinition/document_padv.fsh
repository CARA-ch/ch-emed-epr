Profile: CHEMEDEPRDocumentPharmaceuticalAdvice
Parent: CHEMEDDocumentPharmaceuticalAdvice
Id: ch-emed-epr-document-pharmaceuticaladvice
Title: "CH EMED EPR Document PADV"
Description: "Definition of the bundle for the pharmaceutical advice document"

* insert DocumentRuleSet

// Constraints
* entry[Composition].resource       only CHEMEDEPRCompositionPharmaceuticalAdvice
* entry[Observation].resource       only CHEMEDEPRObservation

// Disable the unused parts
