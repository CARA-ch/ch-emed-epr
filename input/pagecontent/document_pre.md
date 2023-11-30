The **Medication Prescription document** describes the content and format of a Prescription document generated during the process in which a health care professional decides that the patient needs medication (ONE or MORE). Please see [its description in the CH EMED IG](http://fhir.ch/ig/ch-emed/medication-prescription-document.html).

### Profiles

* [Document PRE](StructureDefinition-ch-emed-epr-document-medicationprescription.html)
* [Composition PRE](StructureDefinition-ch-emed-epr-composition-medicationprescription.html)
* [MedicationRequest (PRE)](StructureDefinition-ch-emed-epr-medicationrequest.html)
* [Medication](StructureDefinition-ch-emed-epr-medication.html)

### Example instances

### Specifications

`dispenseRequest.numberOfRepeatsAllowed`: the repeat number can be used to limit the number of allowed refills of the prescription entry.
It does not count the initial dispense, only the following ones (refills).
If absent, refills are not limited; '0' (zero) means only the initial dispense is allowed.

#### States

A prescription may be in different states: submitted, provisional, active, cancelled and refused.

When a prescription is created, it's in the **submitted** state, or in the **provisional** state if the provisional flag is set.

In **refused** and **cancelled** states: the prescription has been ended and is not valid anymore, it SHOULD NOT be dispensed. The difference between refused and cancelled is only about workflow, the consequences are the same.

#### Multiple entries

A prescription document can contain multiple medication requests.

A single document SHALL NOT prescribe multiple times the same treatment (i.e. SHALL NOT target multiple times the same treatment plan entry; the same medication COULD be prescribed multiple times in different treatments).

#### Prescription validity period

The prescription validity period (`MedicationRequest.dispenseRequest.validityPeriod.(start|end)`) indicates the period over which the prescription can be dispensed (NOT the period over which the medication is to be taken by the patient).
The start time is mandatory and SHOULD reflect the time the prescription was created.
The end time is optional but SHOULD be set; if it's not set, the prescription will stay as 'ready for validation' until the time is manually set (in a PADV CHANGE) or the prescription is manually cancelled or refused.

The eMedication service doesn't enforce validity period max duration, as set by cantonal laws.
