Instance: TDExamplePatient
InstanceOf: TDPatient
Title: "Example Patient — Jane Smith"
Description: "A demonstration patient conforming to the TD Patient profile, with a preferred-contact extension and full US Core demographics."
Usage: #example

* id = "td-example-patient"
* extension[preferredContact].valueCodeableConcept = TDContactMethodCS#email "Email"
* identifier[0].use = #usual
* identifier[0].system = "http://example.org/mrn"
* identifier[0].value = "MRN-2026-00142"
* active = true
* name[0].use = #official
* name[0].family = "Smith"
* name[0].given[0] = "Jane"
* name[0].given[1] = "Marie"
* gender = #female
* birthDate = "1982-04-15"
* telecom[0].system = #email
* telecom[0].value = "jane.smith@example.org"
* telecom[0].use = #home
* telecom[1].system = #phone
* telecom[1].value = "+1-555-867-5309"
* telecom[1].use = #mobile
* address[0].use = #home
* address[0].type = #physical
* address[0].line[0] = "742 Evergreen Terrace"
* address[0].city = "Springfield"
* address[0].state = "IL"
* address[0].postalCode = "62704"
* address[0].country = "US"
* communication[0].language = urn:ietf:bcp:47#en "English"
* communication[0].preferred = true
