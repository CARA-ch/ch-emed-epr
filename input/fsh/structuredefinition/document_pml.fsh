Profile: CHEMEDEPRDocumentMedicationList
Parent: CHEMEDDocumentMedicationList
Id: ch-emed-epr-document-medicationlist
Title: "CH EMED EPR Document PML"
Description: "Definition of the bundle for the medication list document"

* insert document-ruleset

// Constraints
* entry[Composition]
  * resource only CHEMEDEPRCompositionMedicationList
* entry[MedicationStatement]
  * resource only CHEMEDEPRMedicationStatementList
* entry[MedicationRequest]
  * resource only CHEMEDEPRMedicationRequestList
* entry[MedicationDispense]
  * resource only CHEMEDEPRMedicationDispenseList
* entry[Observation]
  * resource only CHEMEDEPRObservationList

// Disable the unused parts
