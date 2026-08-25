# Must Support & Conformance Rules

This section defines the conformance expectations for actors exchanging resources defined in this Implementation Guide.

## Conformance Verbs (RFC 2119)
* **SHALL:** An absolute requirement for conformance.
* **SHOULD:** A valid reason may exist in particular circumstances to ignore a particular item, but the full implications must be understood and carefully weighed before choosing a different course.
* **MAY:** Truly optional.

## Meaning of MustSupport (MS)

* **Sender Systems:** A sender system SHALL be capable of capturing, storing, and transmitting elements marked with `MustSupport`. If the data element is present in the clinical record, it MUST be populated in the outgoing FHIR instance.
* **Receiver Systems:** A receiver system SHALL be capable of receiving, parsing, and storing elements marked with `MustSupport` without generating validation faults or truncating clinical information.
