# Skin Screening FHIR Implementation Guide (RBRCSkinScreeningIG)

[![CI Build](https://github.com/susith-athukorala/skin-screening-ig/actions/workflows/build.yml/badge.svg)](https://www.susith.lk/skin-screening-ig/)
[![FHIR R4](https://img.shields.io/badge/FHIR-R4%20(v4.0.1)-orange.svg)](http://hl7.org/fhir/R4/)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](LICENSE)

An open HL7® FHIR® R4 Implementation Guide (IG) developed at the **Rosemary Bryant AO Research Centre (RBRC), Adelaide University**. This guide standardizes digital health data exchange for nurse-led skin cancer screening, teledermatology referrals, risk stratification, and longitudinal lesion surveillance.

---

## Overview

Australia has one of the highest rates of skin cancer globally, making standardized early detection workflows critical. This Implementation Guide defines computable FHIR structures to capture:
- **Individual Risk Profiling:** Phototype assessment using the Fitzpatrick scale (Types I–VI).
- **Lesion Morphology & Findings:** Standardized observations of suspicious cutaneous lesions.
- **Actor Expectations:** RESTful capability statements for clinical screening clients and repository backends.

* **Published Specification:** [https://susith-athukorala.github.io/skin-screening-ig/](https://www.susith.lk/skin-screening-ig/)
* **Validation QA Report:** [https://susith-athukorala.github.io/skin-screening-ig/qa.html](https://www.susith.lk/skin-screening-ig/qa.html)
* **Canonical URL:** `https://www.susith.lk/skin-screening-ig/`
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
```

---

## Local Environment Setup & Installation

To author, validate, and build the Implementation Guide locally, set up the required dependencies below.

### 1. Prerequisites Installation

#### A. Node.js & SUSHI
Install Node.js (v18 or higher recommended), then install SUSHI globally:
```bash
npm install -g fsh-sushi
```

Verify installation:
```bash
sushi --version
```

#### B. Java JDK
The HL7 IG Publisher requires Java JDK 17 or higher.
- macOS (via Homebrew):
  ```bash
  brew install openjdk@17
  ```
- Ubuntu / Debian:
  ```bash
  sudo apt-get update && sudo apt-get install -y openjdk-17-jdk
  ```
- Windows: Download and install OpenJDK 17 via Adoptium Temurin (https://adoptium.net/).

#### C. Download the HL7 IG Publisher
Download the latest `publisher.jar` binary into your project root (or set a shared directory path):
```bash
curl -L -o publisher.jar [https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar](https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar)
```

---

## Build Commands

### Step 1: Compile FSH with SUSHI
Run SUSHI from the repository root to compile FSH source files into FHIR JSON definitions (`fsh-generated/`):
```bash
sushi .
```

To watch for file changes during development:
```bash
sushi . -w
```

### Step 2: Build the Full IG Specification
Run the HL7 IG Publisher to validate resources, generate schemas, resolve links, and compile the static HTML website:
```bash
java -Xmx4G -jar publisher.jar -ig ig.ini
```

Tip: For faster rebuilds that skip re-downloading core packages and cached terminology, run:
```bash
java -Xmx4G -jar publisher.jar -ig ig.ini -no-sushi -tx-off
```

### Step 3: Inspect Output and QA
Once the build finishes:
- Open `output/index.html` in your browser to inspect the website locally.
- Open `output/qa.html` to review the validation report and verify that there are 0 Errors.

---

## Continuous Integration & Deployment

The repository includes a GitHub Actions workflow (`.github/workflows/build.yml`) configured to:
1. Run on every push or pull request to the `main` branch.
2. Execute SUSHI compilation and the HL7 IG Publisher in a clean container.
3. Validate all profiles, terminology bindings, and links.
4. Deploy the compiled web output directly to GitHub Pages.

---

## Authors & Governance

* **Publishing Organization:** Rosemary Bryant AO Research Centre, Adelaide University, Australia
* **Website:** [https://adelaide.edu.au/research/rosemary-bryant-ao-research-centre/](https://adelaide.edu.au/research/rosemary-bryant-ao-research-centre/)
* **Project Lead / Author:** Dr Susith Chandima Athukorala
* **Contact:** Rosemary Bryant AO Research Centre, Adelaide University

---

## License

This Implementation Guide and its underlying FSH conformance artifacts are dedicated to the public domain under the [Creative Commons Zero 1.0 Universal (CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/) dedication.
