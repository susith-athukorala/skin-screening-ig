Instance: PatientExample
InstanceOf: Patient
Title: "Example Patient"
Description: "An example patient for skin screening observations."
* active = true
* name[0].use = #official
* name[0].family = "Smith"
* name[0].given[0] = "Jane"
* gender = #female
* birthDate = "1980-05-12"

Instance: ExampleSkinLesionObservation
InstanceOf: SkinLesionObservation
Title: "Example Skin Lesion Finding"
Description: "An example observation of an asymmetrical pigmented lesion on the back."
* status = #final
* code = http://snomed.info/sct#300577008 "Finding of lesion"
* subject = Reference(PatientExample)
* effectiveDateTime = "2026-08-25T10:30:00+09:30"
* bodySite = http://snomed.info/sct#371309009 "Skin structure of upper arm"

Instance: ExampleFitzpatrickSkinType
InstanceOf: FitzpatrickSkinTypeObservation
Title: "Example Fitzpatrick Skin Phototype"
Description: "An example observation recording a patient with Fitzpatrick Skin Type II."
* status = #final
* code = http://loinc.org#LA15338-9 "Skin-type II: fair skin, blond or light-brown hair, light eyes (blue or green), usual sunburn"
* subject = Reference(PatientExample)
* effectiveDateTime = "2026-08-25T10:30:00+09:30"
* valueCodeableConcept = http://loinc.org#LA15338-9 "Skin-type II: fair skin, blond or light-brown hair, light eyes (blue or green), usual sunburn"
