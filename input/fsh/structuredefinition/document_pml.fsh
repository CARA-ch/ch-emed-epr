Profile: CHEMEDEPRDocumentMedicationList
Parent: CHEMEDDocumentMedicationList
Id: ch-emed-epr-document-medicationlist
Title: "Document PML"
Description: "Definition of the bundle for the medication list document"

* insert DocumentRuleSet

// Constraints
* entry[Composition].resource       only CHEMEDEPRCompositionMedicationList
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementTreatmentPlan
* entry[MedicationRequest].resource only CHEMEDEPRMedicationRequest
* entry[MedicationDispense].resource only CHEMEDEPRMedicationDispense
* entry[Observation].resource       only CHEMEDEPRObservation

// Disable the unused parts
