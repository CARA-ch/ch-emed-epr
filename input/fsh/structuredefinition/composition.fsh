RuleSet: composition-ruleset
* insert domain-resource-ruleset
* confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"
* confidentiality.extension[confidentialityCode].valueCodeableConcept insert codeableconcept-ruleset
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding insert coding-ruleset
* confidentiality.extension[confidentialityCode].valueCodeableConcept.coding = $sct#17621005
* relatesTo.code = http://hl7.org/fhir/document-relationship-type#replaces "Replaces"
* identifier.use = http://hl7.org/fhir/identifier-use#official "Official"
* identifier.value obeys urn-uuid-invariant
* confidentiality.extension 1..1
* type insert codeableconcept-ruleset
* type.coding insert coding-ruleset
* section contains vitalSigns 0..1 // Declare the new slice before defining it
* section[vitalSigns] ^short = "IPS Vital Signs Section"
* section[vitalSigns].code 1..1
* section[vitalSigns].code.coding 1.. // The coding is mandatory because it is the pattern of the 'section' slice
* section[vitalSigns].code = $lnc#8716-3
* section[vitalSigns].entry 1..1
* section[vitalSigns].entry only Reference(CHEMEDEPRObservationBodyWeight)
* section.author only Reference(CHEMEDEPRPractitioner or CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPROrganization or CHEMEDEPRRelatedPerson or CHEMEDEPRDevice)
//* insert no-support(section.author)
* date obeys datetime-only-instant-invariant
* insert no-support(encounter)
* insert no-support(attester[legalAuthenticator])
* insert no-support(attester)
* insert no-support(event)
* insert no-support(relatesTo)
//* insert no-support(author.id)
//* author.identifier 0..0 // The literal reference is required
* insert no-support(custodian.id)
//* custodian.identifier 0..0 // The literal reference is required
* identifier insert identifier-ruleset
* insert no-support(confidentiality.id)
* insert no-support(section.focus)
* section.mode = http://hl7.org/fhir/list-mode#snapshot "Snapshot List" // Document-based workflow, it's always a snapshot and not a live resource
* insert no-support(section.orderedBy) // It's not ordered
* insert no-support(section.entry.id)
* insert modifier(section.modifierExtension)
* section.emptyReason
//* extension[versionNumber] = 1 // TODO
* confidentiality ^short = "The confidentiality is fixed to the 'normal' level"
* identifier.value ^short = "The document identifier as an URN-encoded UUID"


// =====================================================================================
// A RuleSet for Compositions with annotation
// =====================================================================================
RuleSet: composition-with-annotation-ruleset
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
* insert no-support(section[originalRepresentation].focus)
* insert no-support(section[originalRepresentation].emptyReason)
* insert no-support(section[originalRepresentation].section)
* insert no-support(section[originalRepresentation].id)
* section[originalRepresentation].code insert codeableconcept-ruleset
* section[originalRepresentation].code.coding insert coding-ruleset
* section[originalRepresentation].entry ^short = "According to the EPR ordonnance the PDF has to be in PDF/A-1 or PDF/A-2 format. The PDF shall be contained locally in the document."
* insert no-support(section[originalRepresentation].entry.id)
//* section[originalRepresentation].entry.identifier 0..0 // The literal reference is required
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
* subject only Reference(CHEMEDEPRPatient)
* section[treatmentPlan].entry only Reference(CHEMEDEPRMedicationStatement)
* section[treatmentPlan].code insert codeableconcept-ruleset
* section[treatmentPlan].code.coding insert coding-ruleset
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson or CHEMEDEPRDevice) // Only the types authorized in the slices
* author[person] only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* author[device] only Reference(CHEMEDEPRDevice)
//* section[treatmentPlan].author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* insert no-support(section[treatmentPlan].author)


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
// TODO prevent other sections (keep only slices)?
* section[prescription].entry only Reference(CHEMEDEPRMedicationRequest)
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson or CHEMEDEPRDevice) // Only the types authorized in the slices
* author[person] only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* author[device] only Reference(CHEMEDEPRDevice)
//* section[prescription].author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* insert no-support(section[prescription].author)


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
// TODO prevent other sections (keep only slices)?
* section[dispense].entry only Reference(CHEMEDEPRMedicationDispense)
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson or CHEMEDEPRDevice) // Only the types authorized in the slices
* author[person] only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* author[device] only Reference(CHEMEDEPRDevice)
//* section[dispense].author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* insert no-support(section[dispense].author)


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
* section[pharmaceuticalAdvice].entry only Reference(CHEMEDEPRObservation)
* author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson or CHEMEDEPRDevice) // Only the types authorized in the slices
* author[person] only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* author[device] only Reference(CHEMEDEPRDevice)
//* section[pharmaceuticalAdvice].author only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient or CHEMEDEPRRelatedPerson)
* insert no-support(section[pharmaceuticalAdvice].author)


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
* section[list].author 0..0
* section[list].text ^short = "Description of the parameters used to generate this medication list."
* section[list]
  * entry[medicationStatement] only Reference(CHEMEDEPRMedicationStatementList or CHEMEDEPRMedicationStatementChangedList)
  * entry[medicationRequest] only Reference(CHEMEDEPRMedicationRequestList or CHEMEDEPRMedicationRequestChangedList)
  * entry[medicationDispense] only Reference(CHEMEDEPRMedicationDispenseList)
  * entry[observation] only Reference(CHEMEDEPRObservationList)


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
* author only Reference(CHEMEDEPRDevice)
* author 1..1
// TODO prevent other sections (keep only slices)?
* section[card].author 0..0
* section[card].text ^short = "Description of the parameters used to generate this medication card."
* author ^definition = "...Medication cards are automatically created by software, their author is a device."
