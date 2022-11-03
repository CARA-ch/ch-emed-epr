# ch-emed-cara

## Introduction

The CH-EMED-EPR implementation guide describes the FHIR representation of the defined **documents for the exchange of medication information** in the context of CARA's eMedication service.
This implementation guide is dependent on [CH EMED](http://fhir.ch/ig/ch-emed/index.html), [CH Core](http://fhir.ch/ig/ch-core/index.html) and [CH EPR Term](http://fhir.ch/ig/ch-epr-term/index.html), which describe the Swiss specific context, especially related to the Swiss EPR.

Initially this implementation guide was based on the CDA-CH-EMED eMedication ART-DECOR® specification which has been published by [eHealth Suisse](https://www.e-health-suisse.ch/en/home.html).
CDA-CH-EMED defined the eMedication documents for the information exchange in the context of the EPR in Switzerland.
The documents were based on the IHE Pharmacy Technical Framework modelled and specialized in the Building Block Repository CH-PHARM.
Base for this modelling was the report from [IPAG eMedikation, 7.6.2017](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf) and the work of IPAG/eHealth Suisse.

## How to understand this IG

The [mustSupport](https://www.hl7.org/fhir/profiling.html#mustsupport) flag follows the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). It demands that the content creator **must support these elements if they are known**. If the sending application has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be omitted. A receiving application may ignore the information conveyed by the element. A receiving application shall not raise an error solely due to the presence or absence of the element.

The _draft_ flag is used to indicate that an element has no clear use case or description and that's it's to be ignored by both content creators and consumers. Implementers SHOULD only care for elements in the **Key Elements Table** (where draft elements don't appear).

The "Differential Table" shows differences with the extended resource, which is shown at the top of the table (usually from the CH-EMED or CH-CORE IG).

## Download

You can also download:

- [this entire guide](full-ig.zip)
- the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
- the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on GitHub: TODO.

## Cross Version Analysis

{% include cross-version-analysis.xhtml %}

## Dependency Table

{% include dependency-table.xhtml %}
