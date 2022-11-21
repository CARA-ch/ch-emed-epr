Profile: CHEMEDEPRMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: ch-emed-epr-medicationstatement-card
Title: "CH EMED EPR MedicationStatement (PMLC)"
Description: "Definition of the medication statement for the Medication Card document"

* insert medication-statement-ruleset

* extension[treatmentPlan] 1..1
* extension[treatmentPlan] ^short = "Reference to the MTP that introduced this medication in the treatment plan"
//* extension[authorDocument] only Reference(CHEMEDEPRPractitionerRole or CHEMEDEPRPatient) // TODO fix me
* informationSource 1..1
* informationSource ^short = "The last medical author, (see 'Document PMLC' and 'Guidance - Different Authors')"
* informationSource ^comment = "...It represents the author of the last section (of type _MTP_, _PRE_, or any type of _PADV_ except _COMMENT_ that apply to an _MTP_ or _PRE_) in this treatment."
* extension[authorDocument] ^short = "The last intervening author, only if different that the last medical author (see 'Document PMLC' and 'Guidance - Different Authors')"
* extension[authorDocument] ^comment = "...It represents the author of the last entry (of any kind) in the treatment. If it's the same author as the last medical author, it's not provided."