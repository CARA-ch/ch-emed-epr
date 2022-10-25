Profile: CHEMEDEPRDocumentMedicationTreatmentPlan
Parent: CHEMEDDocumentMedicationTreatmentPlan
Id: ch-emed-epr-document-medicationtreatmentplan
Title: "CH EMED EPR Document MTP"
Description: "Definition of the bundle for the medication treatment plan document"

* insert DocumentRuleSet

// Use our extended types
* entry[Composition].resource       only CHEMEDEPRCompositionMedicationTreatmentPlan
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementTreatmentPlan
* entry[MedicationStatement]        1..1

// Disable the unused parts

// Documentation
* entry[MedicationStatement]        ^short = "Details about the medication introduced in the treatment plan"

// TODO: entry.fullUrl is weird, 0..1 or 1..1 depending on the entry
