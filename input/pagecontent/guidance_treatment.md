### Dosage

#### In reserve
`Dosage.asNeededBoolean`: used to specify if the medication is "in reserve" (Reservemedikation; médicament en réserve; to be taken by the patient only if the need arises - e.g. pains) or if it's regular (Grundmedikation; traitement de base/de fond?; to be always taken).
By default, the medication is a regular one.
If the medication is in reserve, the structured dosage instructions represent the maximum dosage the patient can take.

### Route

### Site

### Medication

#### Codes

Implementers SHALL use the GTIN code if available. If it is not (e.g. Colchicine that was not authorized by Swissmedic but still recommended by the
[Schweizerische Gesellschaft für Rheumatologie](https://www.rheuma-net.ch/de/dok/sgr-dokumente/behandlung/therapie/other-therapies/519-colchicin/file)),
then the relevant ATC code SHOULD be used.
The ATC code may be used even if the GTIN is specified.
Implementers MAY use other codes (e.g. pharmacode) if available.

The `text` may be either:

- a brand/product or
- described as a generic/scientific name or 
- a descriptor of a magistral preparation/compound medicine

#### Ingredients

#### Others

`form`: the galenic form SHOULD be specified.

`batch.lotNumber`: the lot number MAY be specified by dispensers, if a single package has been dispensed.
It MAY be specified in MedicationStatements or MedicationRequests if a specific lot is to be used (e.g. in controlled trials).

`batch.expirationDate`: the expiration date MAY be specified by dispensers, if a single package has been dispensed.
