### Prescriber workflow
During a medical consultation, the typical workflow for a prescriber (medical practitioner), and the corresponding transactions would be :
- To check the current medication of a patient during the anamnesis.
  - Import [PML](document_pml.html) (Medication list) to retrieve the current medication plan.
- To prescribe new medication.
  - Export [MTP](document_mtp.html) (Medication Treatment Plan) for each new medication introduced into the plan.
  - [PRE](document_pre.html) (Prescription) to issue a new prescription.
- To provide pharmaceutical advice about the medication.
  - [PADV](document_padv.html) (Pharmaceutical advice) [COMMENT](document_padv.html#padv-comment) to add a comment on a MTP entry.

### Dispenser workflow
While visiting a pharmacy after a medical consultation, a patient and a pharmacist (dispenser) typically exchange on the current medication of the patient, the new treatments prescribed, possible drug substitutions (use of generic drug, change of the dosage form) and possible addition of new medications to the prescription.

The typical workflow for a dispenser (pharmacist), and the corresponding transactions would be :
- To check the current medication of a patient.
  - Import [PML](document_pml.html) (Medication list) to retrieve the current medication plan.
- To update the medication plan in case it is not up-to-date (for instance a new prescription has been issued by a prescriber not connected to the eMedication service).
  - Export [MTP](document_mtp.html) (Medication Treatment Plan) for each  treatment not in the plan to introduce it into it.
  - [PADV](document_padv.html) (Pharmaceutical advice).
    - [CANCEL](document_padv.html#padv-cancel) for each MTP entry that is no longer active.
- To check and confirm the prescription made by the prescriber.
  - [PADV](document_padv.html) (Pharmaceutical advice).
    - [OK](document_padv.html#padv-ok) for each [PRE](document_pre.html) (Prescription) entry of the prescription that can be dispensed.
    - [REFUSE](document_padv.html#padv-refuse) for each [PRE](document_pre.html) (Prescription) entry of the prescription that cannot be dispensed.
- To prescribe new medication.
  - [PRE](document_pre.html) (Prescription) for each medication prescribed by the dispenser.
  - Export [MTP](document_mtp.html) (Medication Treatment Plan) for each new treatment to introduce them into the plan.
- To dispense the prescribed medication or appropriate generics, possibly changing the dosage form.
  - [DIS](document_dis.html) (Dispense) for each medication actually dispensed.
- To generate a medication card for the patient.
  - Import [PLMc](document_pmlc.html) to create a document describing the new actual medication of the patient.

### Medication manager workflow

### Patient workflow

### Hospital admission workflow

### Hospital release workflow

### Restrictions by role

| Role                    | Read access | Write access   | Subject to access rules |
|-------------------------|-------------|----------------|-------------------------|
| Patient                 | ✅           | ✅ / restricted | ❌                       |
| Representative          | ✅           | ✅ / restricted | ✅                       |
| Healthcare professional | ✅           | ✅              | ✅                       |
| Assistant               | ✅           | ✅              | ✅ (responsible)         |
| Technical user          | ❌           | ✅              | ❌                       | <!-- This may change -->
| Document administrator  | ✅           | ✅              | ❌                       |
| Policy administrator    | ❌           | ❌              | ❌                       |

Restrictions for patients/representatives include:

- they cannot provide/replace/deprecate/delete a PRE or DIS document, or a PADV CHANGE targeting a PRE entry;
- they cannot set a PractitionerRole or Organization author in main parts of the documents;
