Profile: SkinLesionObservation
Parent: Observation
Id: skin-lesion-observation
Title: "Skin Lesion Screening Finding"
Description: "Records primary screening findings, anatomical site, and morphological features of a detected lesion."
* status = #final
* code = http://snomed.info/sct#300577008 "Finding of lesion"
* subject 1..1
* subject only Reference(Patient)
* effective[x] 1..1
* effective[x] only dateTime
* bodySite 1..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
