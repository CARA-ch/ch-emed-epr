All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### [???] - TBD

#### Added

- Added a concept map for translating from the RouteOfAdministrationEDQM value set to HCI's CdTyp26.
- Added a concept map for translating from HCI's CdTyp26 to the RouteOfAdministrationEDQM value set.

#### Fixed

- Replaced the link to CH EPR Term on the index page with link to CH Term.
- PADV examples' compositions using LOINC code `61356-2` now use its French display.

#### Changed

- `CHEMEDEPRRelatedPerson` now inherits from `CHCoreRelatedPerson` instead of `RelatedPerson`, due to profiling changes in CH EMED.

#### Removed

### [2.0.0] - 2025-01-21

#### Added

- Added `Bq`, `kBq`, `MBq` and `GBq` units to the `CHEMEDEPRAmountQuantityUnitCode`  value set, added in CH EMED 4.0.1 to the parent `UnitCode` value set.
- Added _nanomole_ and _Application_ units to the `CHEMEDEPRAmountQuantityUnitCode` value set.
- Added an example for a medication statement with split dosage: `MedicationStatementDafalganEffSplitDose`.
- Added a new example for a medication statement with max dose per period: `MedicationStatementDafalganEffMaxDosePerPeriod`.
- Set cardinality of PMLC medication statement (`CHEMEDEPRMedicationStatementCard`) extension `lastConsideredDocument`, added with CH EMED 5.0.0, to `1..1` and added it to the IG examples.
- Added profiles `CHEMEDEPRMedicationRequestChangedList` and `CHEMEDEPRMedicationStatementChangedList` as entries in `CHEMEDEPRDocumentMedicationList` and `CHEMEDEPRCompositionMedicationList` for the _changed_ resources. Added examples for this two new profiles.
- Added an alternative scenario to the [Use Case](use_case.html) to showcase a PADV CHANGE and a PML including changed resources.
- Added `CHEMEDEPRPaperFormatCS` coding system and `CHEMEDEPRPaperFormat` value set for paper formats to be used in PMLC queries.
- Added the following concept maps to provide guidance on translation between HCI's CdTyp9 codes and the quantity and time unit value sets in this IG: `CdTyp9ToCHEMEDEPRAmountQuantityUnitCode`, `CHEMEDEPRAmountQuantityUnitCodeToCdTyp9`, `CdTyp9ToCHEMEDEPRTimeQuantityUnitCode` and `CHEMEDEPRTimeQuantityUnitCodeToCdTyp9`.
- Added a new invariant to all medication statement, medication request and medication dispense profiles to enforce that all dosage elements (when having split dosage) use the same unit.
- Added a (warning) invariant to all composition profiles to check that the composition title is correct for the composition's language.
- Added a new guidance page on comments/notes.

#### Fixed

- Updated dates on `DocumentPadv2` so that it can be published after the sequence `DocumentMtp1`, `DocumentPadv1`, `DocumentPre1`, `DocumentDis1` when testing.
- Fixed profile for examples `MedicationStatementParacetamolAxapharmPmlc` and `MedicationStatementParacetamolDafalganEffPmlc` to be `CHEMEDEPRMedicationStatementCard` instead of `CHEMEMedicationStatementCard`.
- Added `base-dosage-text` invariant to base `main-dosage-ruleset`, hence to `CHEMEDEPRDosage` and `CHEMEDEPRDosageMedicationRequest` profiles. This invariant produces a warning if the `Dosage.text` is missing or blank. Updated all affected dosage examples to include `.text`.
- Fixed PADV document profile `CHEMEDEPRDocumentPharmaceuticalAdvice` for entry slices `MedicationStatementChanged` and `MedicationRequestChanged` to use the CH EMED EPR resources `CHEMEDEPRChangedMedicationStatement` and `CHEMEDEPRChangedMedicationRequest` respectively instead of the CH EMED ones.
- Fixed the `time-quantity-only-integer` constraint on the `CHEMEDEPRTimeQuantity` profile, that was badly express and would not work at all. See [#71](https://github.com/CARA-ch/ch-emed-epr/issues/71).
- Reintroduced the binding of substitution codes for medication statements and medication requests to `CHEMEDEprActSubstanceAdminSubstitutionCode`. See [#72](https://github.com/CARA-ch/ch-emed-epr/issues/72).
- Fixed the `CHEMEDEprActSubstanceAdminSubstitutionCode` VS to have both `N` and `E` codes allowed. See [#82](https://github.com/CARA-ch/ch-emed-epr/issues/82)
- `informationSource` on medication statements now accepts only references to `CHEMEDEPRPractitionerRole`, `CHEMEDEPRPatient` or `CHEMEDEPRRelatedPerson`, as for other similar references, instead of upstream profiles.
- Fixed (overridden from CH EMED) invariants with error severity for GLN, AHVN13, EPR-SPID and VEKA values, which were not being applied. Note: CH EMED checks with warning severity were always applied.
- The description of the `asNeeded` field of dosage resources now properly states that the default value if omitted is `false`.

#### Changed

- Moved cardinality `1..1` on `route.text` and `route.id` from `common-dosage-ruleset` to `main-dosage-ruleset` (since split dosage cardinality in CH EMED is forced to 0).
- Replace `{Piece}` unit code with SCT `246205007` (`Quantity`) in `CHEMEDEPRAmountQuantityUnitCode` and in the `MedicationWithTwoIngredients` example.
- Updated the descriptions of `CHEMEDEPRDosage` and `CHEMEDEPRDosageMedicationRequest` `.text`, `.additionalInstruction`, and `.patientInstruction` fields to reflect the changes proposed in https://github.com/CARA-ch/ch-emed-epr/issues/61.
- Flagged `CHEMEDEPRMedicationRequest`, `CHEMEDEPRChangedMedicationRequest` and `CHEMEDEPRMedicationRequestList` `.dispenseRequest.dispenseInterval` as not supported.
- Changed cardinality of `partOf` to `0..0` for the following profiles:
  - `CHEMEDEPRMedicationStatement`
  - `CHEMEDEPRMedicationStatementList`
  - `CHEMEDEPRMedicationStatementCard`
- Changed cardinality of `supportingInformation` to `0..0` for profiles `CHEMEDEPRMedicationRequest` and `CHEMEDEPRMedicationRequestList`.
- Updated dependencies to:
  - CH EMED 5.0.0
  - CH Core 5.0.0
- Minor improvements to the Document PMLC page text content.
- Updated the description of the validity period within the Document PRE content.

#### Removed

### [1.0.0] - 2024-01-24

#### Added

- First release of CH EMED EPR

#### Fixed

#### Changed

#### Removed

[2.0.1]: https://github.com/CARA-ch/ch-emed-epr/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/CARA-ch/ch-emed-epr/compare/v1.0.0...v2.0.0
[1.0.0]: https://github.com/CARA-ch/ch-emed-epr/releases/tag/v1.0.0
