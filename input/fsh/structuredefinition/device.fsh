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
* insert problematic-reference(owner) // TODO support?
* insert problematic-reference(location)
* insert problematic-reference(note.authorReference)
* insert problematic-reference(parent)
* insert no-support(udiCarrier)
* insert no-support(status)
* insert no-support(statusReason)
* insert no-support(type)
* insert no-support(specialization)
* insert no-support(property)
* insert no-support(safety)
* owner only Reference(CHEMEDEPROrganization)
//* deviceName 
//* deviceName 1.. // #16
//* note.author[x] only Reference // #16
