Profile: TDPatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: td-patient
Title: "TD Patient"
Description: """
  Patient profile for the TorchLab Demo IG. Extends US Core Patient with a
  preferred contact-method extension and mandates birth date and family name
  for all registered patients.
"""

* extension contains TDPreferredContact named preferredContact 0..1 MS
* extension[preferredContact] ^short = "Patient's preferred contact method"

* name 1..* MS
* name.family 1..1 MS
* name.given MS

* birthDate 1..1 MS
* birthDate ^short = "Date of birth — required for all patients in this IG"

* gender MS
* telecom MS
* address MS
