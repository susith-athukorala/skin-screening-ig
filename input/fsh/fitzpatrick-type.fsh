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
* http://loinc.org#LA15337-1 "Type I"
* http://loinc.org#LA15338-9 "Type II"
* http://loinc.org#LA15339-7 "Type III"
* http://loinc.org#LA15340-5 "Type IV"
* http://loinc.org#LA15341-3 "Type V"
* http://loinc.org#LA15342-1 "Type VI"
