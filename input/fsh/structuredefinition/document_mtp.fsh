Profile: CHEMEDEPRDocumentMedicationTreatmentPlan
Parent: CHEMEDDocumentMedicationTreatmentPlan
Id: ch-emed-epr-document-medicationtreatmentplan
Title: "CH EMED EPR Document MTP"
Description: "Definition of the bundle for the medication treatment plan document"

* insert document-ruleset

* entry[Composition].resource only CHEMEDEPRCompositionMedicationTreatmentPlan
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementTreatmentPlan
* entry[MedicationStatement] 1..1

// Documentation
* entry[MedicationStatement] ^short = "Details about the medication introduced in the treatment plan"

// TODO: entry.fullUrl is weird, 0..1 or 1..1 depending on the entry. https://github.com/hl7ch/ch-core/issues/192
