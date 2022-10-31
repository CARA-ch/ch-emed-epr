Profile: CHEMEDEPRDocumentMedicationPrescription
Parent: CHEMEDDocumentMedicationPrescription
Id: ch-emed-epr-document-medicationprescription
Title: "CH EMED EPR Document PRE"
Description: "Definition of the bundle for the medication prescription document"

* insert document-ruleset

// Constraints
* entry[Composition].resource only CHEMEDEPRCompositionMedicationPrescription
* entry[MedicationRequest].resource only CHEMEDEPRMedicationRequest

// Disable the unused parts
