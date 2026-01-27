Instance: ch-emed-epr-emedo-mpi-int-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR CARA MPI Int Naming System"
Description: "Naming System for CARA's MPI assigning authority."
Usage: #definition
* name = "CHEMEDEPReMedoMPIIntAssigningAuthorityNamingSystem"
* status = #draft
* kind = #identifier
* date = "2026-01-20"
* publisher = "CARA"
* uniqueId[+].type = #oid
* uniqueId[=].value = $emedoMpiIntOid

Instance: ch-emed-epr-chuv-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR CHUV Root Naming System"
Description: "Naming System for CHUV root OID."
Usage: #definition
* name = "CHEMEDEPRCHUVRootOidNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-20"
* publisher = "CARA"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.196"
* uniqueId[=].comment = "Root OID for CHUV"

Instance: ch-emed-epr-hug-root-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR HUG Root Naming System"
Description: "Naming System for HUG root OID."
Usage: #definition
* name = "CHEMEDEPRHUGRootOidNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.128"

Instance: ch-emed-epr-hug-ehealth-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR HUG eHealth domain Naming System"
Description: "Naming System of HUG's eHealth domain OID."
Usage: #definition
* name = "CHEMEDEPRHUGeHealthOidNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.128.4.1"

Instance: ch-emed-epr-hug-dtnia-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR - HUG DTN-IA Naming System"
Description: "Naming System of HUG'S DTN-IA department OID."
Usage: #definition
* name = "CHEMEDEPRHUGDTNIAOidNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.128.4.1.4.2"

Instance: ch-emed-epr-hug-pid-dev-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR HUG Patient Id Assigning Authority (dev) Naming System"
Description: "Naming System of HUG's local patient ids in their development environment, used in the context of CARA's eMedication service's dev and int environments."
Usage: #definition
* name = "CHEMEDEPRHUGPIDDevNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.128.4.1.4.2.3.2.1.1.1"

Instance: ch-emed-epr-hug-pid-cert-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR HUG Patient Id Assigning Authority (cert) Naming System"
Description: "Naming System of HUG's local patient ids in their certification environment, used in the context of CARA's eMedication service's dev and int environments."
Usage: #definition
* name = "CHEMEDEPRHUGPIDCertNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.128.4.1.4.2.4.2.1.1.1"

Instance: cch-emed-epr-hug-pid-form-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR HUG Patient Id Assigning Authority (form) Naming System"
Description: "Naming System of HUG's local patient ids in their training environment (formation), used in the context of CARA's eMedication service's dev and int environments."
Usage: #definition
* name = "CHEMEDEPRHUGPIDFormNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.128.4.1.4.2.2.2.1.1.1"

Instance: ch-emed-epr-hug-pid-prod-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR HUG Patient Id Assigning Authority (prod) Naming System"
Description: "Naming System of HUG's local patient ids in their production environment, used in the context of CARA's eMedication service's prod environment."
Usage: #definition
* name = "CHEMEDEPRHUGPIDProdNamingSystem"
* status = #draft
* kind = #root
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.128.4.1.4.2.1.2.1.1.1"

Instance: ch-emed-epr-hci-index-cdtyp9-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR - HCI Index CdTyp9 Naming System"
Description: "Naming System of HCI's CdTyp9 (unit codes) table."
Usage: #definition
* name = "CHEMEDEPRHCIIndexCDTyp9NamingSystem"
* status = #draft
* kind = #codesystem
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #uri
* uniqueId[=].value = $hciIndexUnitCodesUrl

Instance: ch-emed-epr-hci-index-cdtyp26-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR - HCI Index CdTyp26 Naming System"
Description: "Naming System of HCI's CdTyp26 (routes of administration) table."
Usage: #definition
* name = "CHEMEDEPRHCIIndexCdTyp26NamingSystem"
* status = #draft
* kind = #codesystem
* date = "2026-01-21"
* publisher = "HUG"
* uniqueId[+].type = #uri
* uniqueId[=].value = $hciIndexRouteOfAdministrationTableUrl

Instance: ch-emed-epr-pmp-pid-oid-dev-naming-system
InstanceOf: NamingSystem
Title: "CH EMED EPR - PMP-PID Assigning Authority OID dev"
Description: "Naming System of the PMP-PID's Assigning Authority OID on development environment."
Usage: #definition
* name = "CHEMEDEPRPMPPIDOIDDevNamingSystem"
* status = #draft
* kind = #identifier
* date = "2026-01-22"
* publisher = "HUG"
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.756.5.30.1.1625.3.1.3.1"
