Profile: FitzpatrickSkinTypeObservation
Parent: Observation
Id: fitzpatrick-skin-type
Title: "Fitzpatrick Skin Type Observation"
Description: "Records the patient's skin phototype using SNOMED CT observable entity and standard answer codes."
* status = #final
* code = http://snomed.info/sct#443708004 "Fitzpatrick classification skin type score"
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
Description: "Answer codes representing Fitzpatrick skin phototypes (Types I through VI)."
* ^experimental = false
* http://loinc.org#LA26421-4 "Type I"
* http://loinc.org#LA26422-2 "Type II"
* http://loinc.org#LA26423-0 "Type III"
* http://loinc.org#LA26424-8 "Type IV"
* http://loinc.org#LA26425-5 "Type V"
* http://loinc.org#LA26426-3 "Type VI"
