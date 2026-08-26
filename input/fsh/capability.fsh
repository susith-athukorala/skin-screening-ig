Instance: SkinScreeningServerCapabilityStatement
InstanceOf: CapabilityStatement
Title: "Skin Screening Server Capability Statement"
Description: "Describes the RESTful interaction requirements for a FHIR repository managing skin screening observations."
* status = #draft
* date = "2026-08-26"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* rest[0].mode = #server
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[1].code = #search-type
* rest[0].resource[1].type = #Observation
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[1].code = #create
* rest[0].resource[1].interaction[2].code = #search-type
* rest[0].resource[1].supportedProfile[0] = "https://susith-athukorala.github.io/skin-screening-ig/StructureDefinition/fitzpatrick-skin-type"
* rest[0].resource[1].supportedProfile[1] = "https://susith-athukorala.github.io/skin-screening-ig/StructureDefinition/skin-lesion-observation"
