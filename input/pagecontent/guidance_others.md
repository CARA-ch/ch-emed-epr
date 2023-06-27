Those are generic guidances that apply to all documents.

### Patient body weight

The patient body weight can be specified by adding a [Body Weight Observation](StructureDefinition-ch-emed-epr-observation-body-weight.html) to the Bundle in the entry "ObsBodyWeight". It must be referenced from the Composition too, in the section "vitalSigns".

### IDs and identifiers
Both ids et identifiers are mentionned in this documentation. Although they might seem similar, they differ in the fact that ```id``` is relative to a given FHIR document, while ```identifier``` is absolute for a resource.

A given ressource (for instance a pratician) might have a different ```id``` in different FHIR document, but it will always have the same identifier (eg. its GLN).

For instance, in the following resource :
```json
    {
      "fullUrl": "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt",
      "resource": {
        "resourceType": "Practitioner",
        "id": "FamilienHausarzt",
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Practitioner</b><a name=\"FamilienHausarzt\"> ... Familien Hausarzt </p></div>"
        },
        "identifier": [
          {
            "system": "urn:oid:2.51.1.3",
            "value": "7601000234438"
          }
        ],
        "name": [
          {
            "family": "Hausarzt",
            "given": [
              "Familien"
            ]
          }
        ]
      }
    }
```

The ```id``` of the practitionner is ```FamilienHausarzt```. This value is used in the ```fullUrl``` for internal references within the FIHR document (see also [compositions guidance](guidance_composition.html)).

The ```identifier```, composed of a ```system``` and a ```value``` is absolute : it's the practitionner's GLN, that is valid outside the FHIR document.

### Profile
The use of the ```meta/profile``` tag is encouraged in development because it enables better feedback / response codes. This profile can be omitted in a production environment.

```json
"meta": {
    "lastUpdated": "2020-03-09T12:31:59.738+00:00",
    "profile": [
      "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-document-medicationtreatmentplan"
    ]
  }
```