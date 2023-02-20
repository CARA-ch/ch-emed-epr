### Introduction

The CH-EMED-EPR implementation guide describes the FHIR representation of the defined **documents for the exchange of medication information** in the context of [CARA's eMedication service](https://cara-ch.github.io/emed-service-guide/).
This implementation guide is dependent on [CH-EMED](https://build.fhir.org/ig/hl7ch/ch-emed/index.html) (CI version), [CH-Core](http://fhir.ch/ig/ch-core/index.html) and [CH-EPR-Term](http://fhir.ch/ig/ch-epr-term/index.html), which describe the Swiss specific context, especially related to the Swiss EPR.

Initially this implementation guide was based on the CDA-CH-EMED eMedication ART-DECOR® specification which has been published by [eHealth Suisse](https://www.e-health-suisse.ch/en/home.html).
CDA-CH-EMED defined the eMedication documents for the information exchange in the context of the EPR in Switzerland.
The documents were based on the IHE Pharmacy Technical Framework modelled and specialized in the Building Block Repository CH-PHARM.
Base for this modelling was the report from [IPAG eMedikation, 7.6.2017](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf) and the work of IPAG/eHealth Suisse.

- [MTP](document_mtp.md) (Medication Treatment Plan): introducing a treatment in the plan.
- [PRE](document_pre.md) (Prescription): prescribing a medication.
- [DIS](document_dis.md) (Dispense): dispensing a medication.
- [PADV](document_padv.md) (Pharmaceutical advice): modifying the state of the treatment.
- [PML](document_pml.md) (Medication list): listing multiple entries in a single document.
- [PMLC](document_pmlc.md) (Medication card): listing the on-going treatments in an aggregated form.

Guidance pages are available to detail some parts of the profile, they are listed in the top menu.

### How to understand this IG

#### Tabs

- **Differential**: it shows differences with the parent artifact. It is only useful to authors of this IG.
- **Key**: it only contains elements that are included in summaries (a feature not used by this IG) or as **must support**.
- **Snapshot**: the tab that contains all the elements, it is the most useful one.

#### Flags

- **must support**: the [mustSupport](https://www.hl7.org/fhir/profiling.html#mustsupport) flag follows the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). It demands that the content creator **must support these elements if they are known**. If the sending application has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be omitted. A receiving application may ignore the information conveyed by the element. A receiving application shall not raise an error solely due to the presence or absence of the element.
- **draft**/**✕**: the draft flag or '✕' symbol are used to indicate that an element has no clear use case or description and is useless in this profile. Implementers SHOULD avoid setting or reading it, as elements' meaning is undefined.
- **trial use**: the element description is being defined and implementers MAY support it.

#### Binding strengths

- **required** binding:
- **extensible** binding:
- **example** binding:

### Download

You can also download:

- [this entire guide](full-ig.zip)
- the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
- the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on GitHub: [https://github.com/CARA-ch/ch-emed-epr](https://github.com/CARA-ch/ch-emed-epr).

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}
