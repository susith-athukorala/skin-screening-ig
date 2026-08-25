# Security & Privacy Considerations

Implementers of this guide are expected to follow core FHIR Security and Privacy specifications along with regional healthcare data governance mandates.

## Identity & Access Control
* Systems SHOULD implement **SMART on FHIR** (OAuth 2.0 / OpenID Connect) for secure user authentication and authorization scopes.
* Access to skin screening records and dermatological imagery MUST be restricted according to role-based access control (RBAC).

## Clinical Photography & Sensitive Data
* Photographic attachments and dermoscopy images contain high-resolution identifiable patient features and MUST be stored and transmitted encrypted in transit (TLS 1.3) and at rest (AES-256).
* Compliance with the **Australian Privacy Principles (APPs)** and the **Privacy Act 1988** is required for production deployments handling identifiable health data.
