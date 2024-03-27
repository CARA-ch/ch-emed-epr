All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### [Unreleased]

- Updated dates on `DocumentPadv2` so that it can be published after the sequence `DocumentMtp1`, `DocumentPadv1`, `DocumentPre1`, `DocumentDis1` when testing.
- Added `Bq`, `kBq`, `MBq` and `GBq` units to the `CHEMEDEPRAmountQuantityUnitCode`  value set, added in CH EMED 4.0.1 to the parent `UnitCode` value set.
- Moved cardinality `1..1` on `route.text` and `route.id` from `common-dosage-ruleset` to `main-dosage-ruleset` (since split dosage cardinality in CH EMED is forced to 0).
- Fixed profile for examples `MedicationStatementParacetamolAxapharmPmlc` and `MedicationStatementParacetamolDafalganEffPmlc` to be `CHEMEDEPRMedicationStatementCard` instead of `CHEMEMedicationStatementCard`.
- Added an example for a medication statement with split dosage: `MedicationStatementDafalganEffSplitDose`.
- Replace `{Piece}` unit code with SCT `246205007` (`Quantity`) in `CHEMEDEPRAmountQuantityUnitCode` and in the `MedicationWithTwoIngredients` example.
- Fixed cardinality of PMLC medication statement (`CHEMEDEPRMedicationStatementCard`) extension `lastConsideredDocument`, added with CH EMED 5.0.0, to `1..1` and added it to the IG examples.
- Updated dependencies to:
  - CH EMED 5.0.0
  - CH Core 5.0.0

### [1.0.0] - 2024-01-24

#### Added

- First release of CH EMED EPR

#### Fixed

#### Changed

#### Removed

[unreleased]: https://github.com/CARA-ch/ch-emed-epr/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/CARA-ch/ch-emed-epr/releases/tag/v1.0.0
