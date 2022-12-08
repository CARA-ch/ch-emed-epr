Profile: CHEMEDEPRDevice
Parent: Device
Id: ch-emed-epr-device
Title: "CH EMED EPR Device"
Description: "Definition of the device for the eMedication context"

* insert domain-resource-ruleset

* identifier insert identifier-ruleset
* insert problematic-reference(identifier.assigner)
* insert problematic-reference(definition)
* insert problematic-reference(patient)
* insert problematic-reference(owner) // TODO allow
* insert problematic-reference(location)
* insert problematic-reference(note.authorReference)
* insert problematic-reference(parent)
* udiCarrier D
* status D
* statusReason D
* type D
* specialization D
* property D
* safety D
* owner only Reference(CHEMEDEPROrganization)
