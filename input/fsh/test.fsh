Alias: SCT = http://snomed.info/sct
Alias: $additional-bindings-profile-uc = http://hl7.org/fhir/test/StructureDefinition/additional-bindings-profile-uc
Alias: $additional-bindings-profile-cs = http://hl7.org/fhir/test/StructureDefinition/additional-bindings-profile-cs


Profile: MyReferral
Parent: ServiceRequest
Id: MyReferral
Title: "Additional Bindings Profile"
* ^version = "1.0.0"
* ^status = #draft
* code from VS1
* orderDetail


///// Unused
/// Extensions: ?
//http://hl7.org/fhir/5.0/StructureDefinition/extension-ElementDefinition.binding.additional
/// Aliases:

  

  * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #required
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = Canonical(VSA)
  * ^binding.extension[=].extension[+].url = "usage"
  * ^binding.extension[=].extension[=].valueUsageContext.code = $additional-bindings-profile-uc#ServiceRequest.code
  * ^binding.extension[=].extension[=].valueUsageContext.valueCodeableConcept = SCT#365176002

  * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #required
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = Canonical(VSB)
  * ^binding.extension[=].extension[+].url = "usage"
  * ^binding.extension[=].extension[=].valueUsageContext.code = $additional-bindings-profile-uc#ServiceRequest.code
  * ^binding.extension[=].extension[=].valueUsageContext.valueCodeableConcept = SCT#364940007





ValueSet: VS1
Id: VS1
Title: "Value Set 1"
Description: "Value Set 1."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#365176002
* SCT#364940007


ValueSet: VSA
Id: VSA
Title: "Value Set A"
Description: "Value Set A."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#288442008
* SCT#288446006
* SCT#288445005



ValueSet: VSB
Id: VSB
Title: "Value Set B"
Description: "Value Set B."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#87683000  "Left handed (finding)"
* SCT#46669005  "Right handed (finding)"
* SCT#23088002  "Ambidextrous (finding)"

Instance: MyReferral1
InstanceOf: MyReferral

* status = #active
* code = SCT#365176002
* subject.display = "Patient1"
* intent = #order
* orderDetail[+] = SCT#23088002