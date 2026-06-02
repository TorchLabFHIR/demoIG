Profile: TDVitalSigns
Parent: Observation
Id: td-vital-signs
Title: "TD Vital Signs"
Description: """
  Vital signs observation profile for the TorchLab Demo IG. Records
  point-in-time measurements (blood pressure, heart rate, BMI, etc.)
  for a TD Patient. Constrains subject to TDPatient and requires an
  effective date-time.
"""

* status MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* category 1..* MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"

* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/observation-vitalsignresult (extensible)
* code ^short = "Vital sign type (LOINC)"

* subject 1..1 MS
* subject only Reference(TDPatient)

* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] ^short = "When the measurement was taken"

* value[x] MS
* value[x] ^short = "Measured value (use component for panel observations)"

* component MS
* component.code MS
* component.value[x] MS

* note MS
* performer MS
