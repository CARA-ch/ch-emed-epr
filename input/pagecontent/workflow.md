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
