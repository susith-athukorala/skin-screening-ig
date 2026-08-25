Profile: FitzpatrickSkinTypeObservation
Parent: Observation
Id: fitzpatrick-skin-type
Title: "Fitzpatrick Skin Type Observation"
Description: "Records the patient's skin phototype based on the Fitzpatrick scale using SNOMED CT terminology."
* status = #final
* code = http://snomed.info/sct#399677003 "Fitzpatrick skin phototype"
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
Description: "SNOMED CT concepts representing Fitzpatrick skin phototypes (Types 1 through 6)."
* experimental = false
* http://snomed.info/sct#416752003 "Fitzpatrick skin phototype 1"
* http://snomed.info/sct#416753008 "Fitzpatrick skin phototype 2"
* http://snomed.info/sct#416754002 "Fitzpatrick skin phototype 3"
* http://snomed.info/sct#416755001 "Fitzpatrick skin phototype 4"
* http://snomed.info/sct#416756000 "Fitzpatrick skin phototype 5"
* http://snomed.info/sct#416757009 "Fitzpatrick skin phototype 6"
