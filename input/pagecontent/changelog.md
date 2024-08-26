All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### [Unreleased]

#### Added

- Added `Bq`, `kBq`, `MBq` and `GBq` units to the `CHEMEDEPRAmountQuantityUnitCode`  value set, added in CH EMED 4.0.1 to the parent `UnitCode` value set.
- Added _nanomole_ and _Application_ units to the `CHEMEDEPRAmountQuantityUnitCode` value set.
- Added an example for a medication statement with split dosage: `MedicationStatementDafalganEffSplitDose`.
- Set cardinality of PMLC medication statement (`CHEMEDEPRMedicationStatementCard`) extension `lastConsideredDocument`, added with CH EMED 5.0.0, to `1..1` and added it to the IG examples.
- Added profiles `CHEMEDEPRMedicationRequestChangedList` and `CHEMEDEPRMedicationStatementChangedList` as entries in `CHEMEDEPRDocumentMedicationList` and `CHEMEDEPRCompositionMedicationList` for the _changed_ resources.

#### Fixed

- Updated dates on `DocumentPadv2` so that it can be published after the sequence `DocumentMtp1`, `DocumentPadv1`, `DocumentPre1`, `DocumentDis1` when testing.
- Fixed profile for examples `MedicationStatementParacetamolAxapharmPmlc` and `MedicationStatementParacetamolDafalganEffPmlc` to be `CHEMEDEPRMedicationStatementCard` instead of `CHEMEMedicationStatementCard`.
- Added `base-dosage-text` invariant to base `main-dosage-ruleset`, hence to `CHEMEDEPRDosage` and `CHEMEDEPRDosageMedicationRequest` profiles. This invariant produces a warning if the `Dosage.text` is missing or blank. Updated all affected dosage examples to include `.text`.
- Fixed PADV document profile `CHEMEDEPRDocumentPharmaceuticalAdvice` for entry slices `MedicationStatementChanged` and `MedicationRequestChanged` to use the CH EMED EPR resources `CHEMEDEPRChangedMedicationStatement` and `CHEMEDEPRChangedMedicationRequest` respectively instead of the CH EMED ones.
- Fixed the `time-quantity-only-integer` constraint on the `CHEMEDEPRTimeQuantity` profile, that was badly express and would not work at all. See [#71](https://github.com/CARA-ch/ch-emed-epr/issues/71).

#### Changed

- Moved cardinality `1..1` on `route.text` and `route.id` from `common-dosage-ruleset` to `main-dosage-ruleset` (since split dosage cardinality in CH EMED is forced to 0).
- Replace `{Piece}` unit code with SCT `246205007` (`Quantity`) in `CHEMEDEPRAmountQuantityUnitCode` and in the `MedicationWithTwoIngredients` example.
- Updated the descriptions of `CHEMEDEPRDosage` and `CHEMEDEPRDosageMedicationRequest` `.text`, `.additionalInstruction`, and `.patientInstruction` fields to reflect the changes proposed in https://github.com/CARA-ch/ch-emed-epr/issues/61.
- Flagged `CHEMEDEPRMedicationRequest`, `CHEMEDEPRChangedMedicationRequest` and `CHEMEDEPRMedicationRequestList` `.dispenseRequest.dispenseInterval` as not supported.
- Changed cardinality of `partOf` to `0..0` for the following profiles:
  - `CHEMEDEPRMedicationStatement`
  - `CHEMEDEPRMedicationStatementList`
  - `CHEMEDEPRMedicationStatementCard`
- Changed caridnality of `supportingInformation` to `0..0` for profiles `CHEMEDEPRMedicationRequest` and `CHEMEDEPRMedicationRequestList`.
- Updated dependencies to:
  - CH EMED 5.0.0
  - CH Core 5.0.0

#### Removed

### [1.0.0] - 2024-01-24

#### Added

- First release of CH EMED EPR

#### Fixed

#### Changed

#### Removed

[unreleased]: https://github.com/CARA-ch/ch-emed-epr/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/CARA-ch/ch-emed-epr/releases/tag/v1.0.0
