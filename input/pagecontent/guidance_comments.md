Comments consisting of free text can be added to the different resources of the eMedication service. It is important to note that depending on the resource to which the comments are attached, the aggregation rules of the eMedication service might produce different results when fetching a PMLC document.

## MTP - Medication Statement

Comments (as many as desired) might be attached to an [MTP medication statement](StructureDefinition-ch-emed-epr-medicationstatement-treatmentplan.html) by filling a `note.text` element per comment.

Note that neither the `note.author` nor the `note.time` elements are expected to be present. If present, these will be __ignored__ by the aggregator. The author is always assumed to be the `informationSource` and the time is assumed to be the `dateAsserted`.

### Aggregation Rules

Comments added to an MTP document's medication statement will be added as comments to the newly created treatment (globally).

## PRE - Medication Request

Comments (as many as desired) might be attached to a [PRE medication request](StructureDefinition-ch-emed-epr-medicationrequest.html) by filling a `note.text` element per comment.

Note that neither the `note.author` nor the `note.time` elements are expected to be present. If present, these will be __ignored__ by the aggregator. The author is always assumed to be the `requester` and the time is assumed to be the `authoredOn`time.

### Aggregation Rules

Comments added with a PRE document's medication request are added to the treatment instance created by the new medication request.

Note that the first medication request to be added to a treatment will effectively replace the first/base treatment instance that was created with the original MTP document.

## DIS - Medication Dispense

Comments (as many as desired) might be attached to a [DIS medication dispense](StructureDefinition-ch-emed-epr-medicationdispense.html) by filling a `note.text` element per comment.

Note that neither the `note.author` nor the `note.time` elements are expected to be present. If present, these will be __ignored__ by the aggregator. The author is always assumed to be the `performer` and the time is assumed to be the `whenHandedOver`time.

### Aggregation Rules

All comments (attached to the observation or to the changed medication statement or request) are added to the target of the medication dispense:
- If the dispense targets a prescription: all comments are attached to the treatment instance of the targetted prescription.
- Otherwise: all comments are attached to the initial/base treatment instance of the targeted treatment plan.

## PADV

All PADV documents must contain an [Observation](StructureDefinition-ch-emed-epr-observation.html), which accepts only one comment to be attached by filling the `note.text` element.

Note that neither the `note.author` nor the `note.time` elements are expected to be present. If present, they will be __ignored__ by the aggregator. The author is always assumed to be the `performer` and the time is assumed to be the `issued`.

This comment conveyed with the observation note conveys the only comment that is allowed to be added with a PADV COMMENT. For any other PADV, the note contains the reason for the PADV. In both cases the comment is treated as any other comment by the aggregator.

PADV CHANGE documents are allowed to provide more comments by filling them within the changed medication statement or changed medication request resource. The rules for the changed resources comments are the same as for their original counterparts.

### Aggregation Rules

All comments (attached to the observation or to the changed medication statement or request) are added to the target of the PADV:
- If the PADV targets a treatment plan: all comments are attached to the treatment (globally).
- If the PADV targets a prescription or dispense: all comments are attached to the treatment instance of the targeted prescription or dispense.

## PMLC Result

When producing the PMLC, the eMedication service will use the aggregated data to attach the stored comments as follows:
All medication statements within a PMLC correspond to a treatment instance and contain all the treatment (global) comments as well as the treatment instance comments. Each comment will be added as an element within the `note` element of the PMLC medication statement:
- `note.text`: the comment itself, as free text.
- `note.time`: the timestamp of when the comment was done. See the other resources descriptions in this guide to see what the aggregator uses to determine the comment timestamp.
- `note.author`: the author of the comment. See the other resources descriptions in this guide to see what the aggregator uses to determine the authorship.

### Example

Given the following sequence:
1. A patient goes to a doctor, which adds a new treatment for the patient. The practitioner attaches the following comment to the MTP's medication statement: "Follow-up needed given possible interactions with other treatments.". The practitioner creates also a prescription to which it adds also the following comment attached to the medication request: "Initial prescription to cover a brief period after which a consultation should be done to follow up the treatment."
2. The patient goes to the pharmacy and gets a dispense for the prescription received on the previous step. The dispenser adds the following comment to the medication dispense: "Initial dispense done following the practitioner indications after verifying that the patient understands the risks."
3. The patient goes back to the doctor, and the doctor decides to keep the same medication but to create a new prescription with a change of dosage. A new prescription is created by the practitioner, with the following comment "new dispense needed to continue the treatment after medical follow-up with revised dosage".

Assuming that both prescriptions are still valid, a PMLC produced after the previous steps would contain two medication statements (for said treatment), one for each existing treatment instance/line:
- One medication statement associated to the first prescription's treatment instance, containing the following comments in no particular order:
    - "Follow-up needed given possible interactions with other treatments."
    - "Initial prescription to cover a brief period after which a consultation should be done to follow up the treatment."
    - "Initial dispense done following the practitioner indications after verifying that the patient understands the risks."
- One medication statement associated to the second prescription's treatment instance, containing the following comments in no particular order:
    - "Follow-up needed given possible interactions with other treatments."
    - "new dispense needed to continue the treatment after medical follow-up with revised dosage"

Let's assume that the following extra step happens:

4. For some reason not relevant to this example, the practitioner decides to change once again the dosage, this time by issuing a PADV CHANGE targeting the second prescription. The observation comment (the reason for the change) states the following: "further adjustment of the dosage has been done", and the following comment attached to the changed medication request: "next dispense should be enough until next medical follow-up"

After this extra step, and assuming that both prescriptions would still be valid, the PMLC would see again two medication statements (for said treatment):
- One medication statement associated to the first prescription's treatment instance, containing the following comments in no particular order:
    - "Follow-up needed given possible interactions with other treatments."
    - "Initial prescription to cover a brief period after which a consultation should be done to follow up the treatment."
    - "Initial dispense done following the practitioner indications after verifying that the patient understands the risks."
- One medication statement associated to the second prescription's treatment instance, containing the following comments in no particular order:
    - "Follow-up needed given possible interactions with other treatments."
    - "new dispense needed to continue the treatment after medical follow-up with revised dosage"
    - "further adjustment of the dosage has been done"
    - "next dispense should be enough until next medical follow-up"