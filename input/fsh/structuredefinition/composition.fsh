RuleSet: composition-ruleset

* insert domain-resource-ruleset

* confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"
* confidentiality.extension[confidentialityCode].valueCodeableConcept insert codeableconcept-ruleset
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding insert coding-ruleset
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding.code = #17621005
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding.system = $sct
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding.display = "Normal (qualifier value)"
//* type.coding.display 1..1
* relatesTo.code = http://hl7.org/fhir/document-relationship-type#replaces "Replaces"
* section[originalRepresentation].code.coding 1..1
* identifier.use = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value obeys urn-uuid-invariant
* confidentiality.extension 1..1
//* type insert codeableconcept-ruleset TODO
//* type.coding 1..1 TODO
//* type.coding insert coding-ruleset TODO
* section.author only Reference(CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPROrganization or CHEMEDEPRRelatedPerson or CHEMEDEPRDevice)
* date obeys datetime-only-instant-invariant
* insert no-support(encounter)
* insert no-support(attester[legalAuthenticator])
* insert no-support(attester)
* insert no-support(event)
* insert no-support(relatesTo)
* insert no-support(author.id)
* author.identifier 0..0 // The literal reference is required
* insert no-support(custodian.id)
* custodian.identifier 0..0 // The literal reference is required
* identifier insert identifier-ruleset
* subject insert codeableconcept-ruleset
* insert no-support(confidentiality.id)
* section.focus 0..0
* section.mode = http://hl7.org/fhir/list-mode#snapshot "Snapshot List" // Document-based workflow, it's always a snapshot and not a live resource
* insert no-support(section.orderedBy) // It's not ordered
* insert no-support(section.entry.id)
* section.emptyReason
//* extension[versionNumber] = 1 // TODO

// Documentation
* confidentiality ^short = "The confidentiality is fixed to the 'normal' level"
* identifier.value ^short = "The document identifier as an URN-encoded UUID"
* extension[versionNumber] ^short = "It shall be the first version of the document"


// =====================================================================================
// A RuleSet for Compositions with annotation
// =====================================================================================
RuleSet: composition-with-annotation-ruleset

* section[annotation].extension[sectionId] 0..0 // Not useful anymore
* section[annotation].code.coding 1..1
* insert no-support(section[annotation].focus)
* insert no-support(section[annotation].emptyReason)
* insert no-support(section[annotation].section)
* insert no-support(section[annotation].id)
* section[annotation] ^short = "Annotation comment concerning this document"
* section[annotation].code insert codeableconcept-ruleset
* section[annotation].code.coding insert coding-ruleset


// =====================================================================================
// A RuleSet for Compositions with original representation
// =====================================================================================
RuleSet: composition-with-original-representation-ruleset

* section[originalRepresentation].code.coding 1..1
* insert no-support(section[originalRepresentation].focus)
* insert no-support(section[originalRepresentation].emptyReason)
* insert no-support(section[originalRepresentation].section)
* insert no-support(section[originalRepresentation].id)
* section[originalRepresentation].code insert codeableconcept-ruleset
* section[originalRepresentation].code.coding insert coding-ruleset
* insert no-support(section[originalRepresentation].entry.id)
* section[originalRepresentation].entry.identifier 0..0 // The literal reference is required
* insert no-support(section[originalRepresentation].extension)


// =====================================================================================
// Composition MTP
// =====================================================================================
Profile: CHEMEDEPRCompositionMedicationTreatmentPlan
Parent: CHEMEDCompositionMedicationTreatmentPlan
Id: ch-emed-epr-composition-medicationtreatmentplan
Title: "MTP Composition"
Description: "Definition of the composition for the medication treatment plan document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

* section[treatmentPlan].extension[sectionId] 0..0 // Not useful anymore
* subject only Reference(CHEMEDEPRPatient)
* section[treatmentPlan].code.coding 1..1
* section[treatmentPlan].entry only Reference(CHEMEDEPRMedicationStatement)
* section[treatmentPlan].code insert codeableconcept-ruleset
* section[treatmentPlan].code.coding insert coding-ruleset
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient)


// =====================================================================================
// Composition PRE
// =====================================================================================
Profile: CHEMEDEPRCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: ch-emed-epr-composition-medicationprescription
Title: "PRE Composition"
Description: "Definition of the composition for the medication prescription document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

//* section[prescription].code.coding.display = "Prescriptions" // TODO upstream
// TODO prevent other sections (keep only slices)?
* section[prescription].code.coding 1..1
* section[prescription].entry only Reference(CHEMEDEPRMedicationRequest)
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient)


// =====================================================================================
// Composition DIS
// =====================================================================================
Profile: CHEMEDEPRCompositionMedicationDispense
Parent: CHEMEDCompositionMedicationDispense
Id: ch-emed-epr-composition-medicationdispense
Title: "DIS Composition"
Description: "Definition of the composition for the medication dispense document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

// Upstream
* section[dispense].extension[sectionId] 0..0 // Not useful anymore

// Restrictions
// TODO prevent other sections (keep only slices)?
* section[dispense].code.coding 1..1
* section[dispense].entry only Reference(CHEMEDEPRMedicationDispense)
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient)


// =====================================================================================
// Composition PADV
// =====================================================================================
Profile: CHEMEDEPRCompositionPharmaceuticalAdvice
Parent: CHEMEDCompositionPharmaceuticalAdvice
Id: ch-emed-epr-composition-pharmaceuticaladvice
Title: "PADV Composition"
Description: "Definition of the composition for the pharmaceutical advice document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

* section[pharmaceuticalAdvice].extension[sectionId] 0..0 // Not useful anymore
* section[pharmaceuticalAdvice].code.coding 1..1
* section[pharmaceuticalAdvice].entry only Reference(CHEMEDEPRObservation)
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient)


// =====================================================================================
// Composition PML
// =====================================================================================
Profile: CHEMEDEPRCompositionMedicationList
Parent: CHEMEDCompositionMedicationList
Id: ch-emed-epr-composition-medicationlist
Title: "PML Composition"
Description: "Definition of the composition for the medication list document"

* insert composition-ruleset

* author only Reference(CHEMEDEPRDevice)
* author 1..1
// TODO prevent other sections (keep only slices)?
* section[list].code.coding 1..1
// TODO section[card].author only Reference()
* section[list].author 1..1 // TODO
* section[list]
  * entry[medicationStatement] only Reference(CHEMEDEPRMedicationStatementList)
  * entry[medicationRequest] only Reference(CHEMEDEPRMedicationRequestList)
  * entry[medicationDispense] only Reference(CHEMEDEPRMedicationDispenseList)
  * entry[observation] only Reference(CHEMEDEPRObservationList)
//* section[annotation] 1..1 TODO
//* section[annotation] ^short = "Description of the parameters used to generate this medication list" TODO


// =====================================================================================
// Composition PMLC
// =====================================================================================
Profile: CHEMEDEPRCompositionMedicationCard
Parent: CHEMEDCompositionMedicationCard
Id: ch-emed-epr-composition-medicationcard
Title: "PMLC Composition"
Description: "Definition of the composition for the medication card document"

* insert composition-ruleset
* insert composition-with-annotation-ruleset
* insert composition-with-original-representation-ruleset

* section[card].extension[sectionId] 0..0 // Not useful anymore
* section[card].code.coding = $lnc#56445-0 "Medication summary" // TODO wrong code upstream
* author only Reference(CHEMEDEPRDevice)
* author 1..1
// TODO prevent other sections (keep only slices)?
// TODO section[card].author only Reference()
* section[card].author 1..1 // TODO
* section[annotation] 1..1
* section[annotation] ^short = "Description of the parameters used to generate this medication card"
* author ^definition = "...Medication cards are automatically created by software, their author is a device."
