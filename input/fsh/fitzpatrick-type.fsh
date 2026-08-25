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
* http://loinc.org#LA15337-1 "Skin-type I: very fair skin, blond or red hair, light eyes (blue or green), never tan and always sunburn after sun exposure"
* http://loinc.org#LA15338-9 "Skin-type II: fair skin, blond or light-brown hair, light eyes (blue or green), usual sunburn"
* http://loinc.org#LA15339-7 "Skin-type III: deep skin, brown hair, light to medium eye color"
* http://loinc.org#LA15340-5 "Skin-type IV: olive skin, dark-brown hair, brown eyes"
* http://loinc.org#LA15341-3 "Skin-type V: brown skin, black hair, black eyes"
* http://loinc.org#LA15342-1 "Skin-type VI: black skin, black hair, black eyes"
