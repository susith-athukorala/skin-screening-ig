Profile: FitzpatrickSkinTypeObservation
Parent: Observation
Id: fitzpatrick-skin-type
Title: "Fitzpatrick Skin Type Observation"
Description: "Records the patient's skin phototype based on the Fitzpatrick scale (Types I to VI)."
* status = #final
* code = http://loinc.org#93044-6 "Fitzpatrick skin type"
* subject 1..1
* subject only Reference(Patient)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from FitzpatrickSkinTypeValueSet (required)

ValueSet: FitzpatrickSkinTypeValueSet
Id: fitzpatrick-skin-type-vs
Title: "Fitzpatrick Skin Type Value Set"
Description: "SNOMED CT codes representing Fitzpatrick skin phototypes I through VI."
* http://snomed.info/sct#416752003 "Fitzpatrick skin phototype I"
* http://snomed.info/sct#416753008 "Fitzpatrick skin phototype II"
* http://snomed.info/sct#416754002 "Fitzpatrick skin phototype III"
* http://snomed.info/sct#416755001 "Fitzpatrick skin phototype IV"
* http://snomed.info/sct#416756000 "Fitzpatrick skin phototype V"
* http://snomed.info/sct#416757009 "Fitzpatrick skin phototype VI"
