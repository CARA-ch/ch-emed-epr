The **Pharmaceutical Advice document** is a document in which health professionals track important observations (with the explicit consent of the patient), in regards to medication use (ONE). Please see [its description in the CH-EMED IG](http://fhir.ch/ig/ch-emed/pharmaceutical-advice-document.html).

## Profiles

* [CH EMED EPR Document PADV](StructureDefinition-ch-emed-epr-document-pharmaceuticaladvice.html)
* [CH EMED EPR Composition PADV](StructureDefinition-ch-emed-epr-composition-pharmaceuticaladvice.html)
* [CH EMED EPR Observation (PADV)](StructureDefinition-ch-emed-epr-observation.html)
* [CH EMED EPR Medication](StructureDefinition-ch-emed-epr-medication.html)

## Example instances

## Specifications

### PADV OK

If it targets an **MTP** entry: it resumes the treatment if it was suspended. The patient SHOULD follow the dosage instructions again.

If it targets a **PRE** entry: it validates the prescription if it was in the state provisional or submitted. The prescription is dispensable.

### PADV SUSPEND

If it targets an **MTP** entry: it suspends the treatment if it was active. The patient SHOULD temporarily NOT take the medication.

### PADV CANCEL

If it targets an **MTP** entry: the treatment is definitively cancelled, because it's not needed anymore or because it's being changed for another treatment.

If it targets a **PRE** entry: the prescription is definitively cancelled, because it should not have been created.

### PADV REFUSE

If it targets an **MTP** entry: the treatment is definitively refused, because it should not have been created.

If it targets a **PRE** entry: the prescription is definitively refused, because it should not have been created.

### PADV COMMENT

If it targets an **MTP** entry: .

If it targets a **PRE** entry: .

If it targets a **DIS** entry: .

### PADV CHANGE

If it targets an **MTP** entry: .

If it targets a **PRE** entry: .
