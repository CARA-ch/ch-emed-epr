Profile: CHEMEDEPRDocumentMedicationCard
Parent: CHEMEDDocumentMedicationCard
Id: ch-emed-epr-document-medicationcard
Title: "CH EMED EPR Document PMLC"
Description: "Definition of the bundle for the medication card document"

* insert document-ruleset

// Constraints
* entry[Composition].resource only CHEMEDEPRCompositionMedicationCard
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementCard

// Disable the unused parts
