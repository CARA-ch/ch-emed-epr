Profile: CHEMEDEPRDocumentMedicationDispense
Parent: CHEMEDDocumentMedicationDispense
Id: ch-emed-epr-document-medicationdispense
Title: "Document DIS"
Description: "Definition of the bundle for the medication dispense document"

* insert DocumentRuleSet

// Restrictions
* entry[Composition].resource       only CHEMEDEPRCompositionMedicationDispense
* entry[MedicationDispense].resource only CHEMEDEPRMedicationDispense

// Disable the unused parts

// Documentation
