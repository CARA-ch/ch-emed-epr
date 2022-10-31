Profile: CHEMEDEPRDocumentMedicationTreatmentPlan
Parent: CHEMEDDocumentMedicationTreatmentPlan
Id: ch-emed-epr-document-medicationtreatmentplan
Title: "CH EMED EPR Document MTP"
Description: "Definition of the bundle for the medication treatment plan document"

* insert document-ruleset

* entry[Composition].resource only CHEMEDEPRCompositionMedicationTreatmentPlan
* entry[MedicationStatement].resource only CHEMEDEPRMedicationStatementTreatmentPlan
* entry[MedicationStatement] 1..1
* meta.profile obeys document-mtp-meta-profile-invariant
* meta.profile 0..2

// Disable the unused parts

// Documentation
* entry[MedicationStatement] ^short = "Details about the medication introduced in the treatment plan"

// TODO: entry.fullUrl is weird, 0..1 or 1..1 depending on the entry


Invariant:   document-mtp-meta-profile-invariant
Description: "Only the CH-EMED and CH-EMED-EPR profiles are allowed"
Expression:  "profile = 'http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-document-medicationtreatmentplan' or profile = ''"
Severity:    #error
XPath:       "f:profile"
