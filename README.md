# Skin Screening FHIR Implementation Guide (RBRCSkinScreeningIG)

[![CI Build](https://github.com/susith-athukorala/skin-screening-ig/actions/workflows/build.yml/badge.svg)](https://github.com/susith-athukorala/skin-screening-ig/actions)
[![FHIR R4](https://img.shields.io/badge/FHIR-R4%20(v4.0.1)-orange.svg)](http://hl7.org/fhir/R4/)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](LICENSE)

An open HL7® FHIR® R4 Implementation Guide (IG) developed at the **Rosemary Bryant AO Research Centre (RBRC), Adelaide University**. This guide standardizes digital health data exchange for nurse-led skin cancer screening, teledermatology referrals, risk stratification, and longitudinal lesion surveillance.

---

## Overview

Australia has one of the highest rates of skin cancer globally, making standardized early detection workflows critical. This Implementation Guide defines computable FHIR structures to capture:
- **Individual Risk Profiling:** Phototype assessment using the Fitzpatrick scale (Types I–VI).
- **Lesion Morphology & Findings:** Standardized observations of suspicious cutaneous lesions.
- **Actor Expectations:** RESTful capability statements for clinical screening clients and repository backends.

* **Published Specification:** [https://susith-athukorala.github.io/skin-screening-ig/](https://susith-athukorala.github.io/skin-screening-ig/)
* **Validation QA Report:** [https://susith-athukorala.github.io/skin-screening-ig/qa.html](https://susith-athukorala.github.io/skin-screening-ig/qa.html)
* **Canonical URL:** `https://susith-athukorala.github.io/skin-screening-ig`
* **FHIR Version:** R4 (4.0.1)

---

## Conformance Artifacts

| Artifact Name | Type | Description |
|---|---|---|
| `FitzpatrickSkinTypeObservation` | Profile (`Observation`) | Captures patient skin phototype (Types I–VI) using standard LOINC answer lists and SNOMED CT observation codes. |
| `SkinLesionObservation` | Profile (`Observation`) | Represents findings of abnormal cutaneous lesions, anatomical body sites, and dermoscopic evaluation. |
| `FitzpatrickSkinTypeVS` | ValueSet | Bound terminology for Fitzpatrick skin phototypes. |
| `SkinScreeningServerCapabilityStatement` | CapabilityStatement | Declares expected REST interactions (`read`, `create`, `search`) across `Patient` and `Observation`. |

---

## Repository Structure

```text
skin-screening-ig/
├── .github/workflows/         # Automated GitHub Actions build and Pages deployment
├── input/
│   ├── fsh/                   # FHIR Shorthand (FSH) definitions
│   │   ├── fitzpatrick.fsh    # Fitzpatrick observation profile & terminology
│   │   ├── skin-lesion.fsh    # Skin lesion observation profile
│   │   ├── capability.fsh     # Repository CapabilityStatement
│   │   └── examples.fsh       # Patient, Practitioner, and Observation instances
│   ├── pagecontent/           # Markdown documentation pages
│   │   ├── index.md           # Home / Plain-language summary
│   │   ├── background.md      # Clinical workflow & screening pathway
│   │   ├── conformance.md     # Conformance verbs & MustSupport rules
│   │   ├── security.md        # Security, SMART on FHIR, & imaging privacy
│   │   └── downloads.md       # Download links for schemas and packages
│   └── ignoreWarnings.txt     # IG Publisher warning suppressions
├── sushi-config.yaml          # SUSHI configuration and site menu hierarchy
└── ig.ini                     # HL7 IG Publisher orchestration config
