Profile: TDCondition
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Id: td-condition
Title: "TD Condition"
Description: """
  Active problem / condition profile for the TorchLab Demo IG. Extends
  US Core Condition Problems and Health Concerns to constrain subject to a
  TD Patient, require an onset date, and carry an optional clinical priority
  extension for care-team triage.
"""

* extension contains TDClinicalPriority named priority 0..1 MS
* extension[priority] ^short = "Care-team triage priority for this problem"

* subject only Reference(TDPatient)

* clinicalStatus 1..1 MS
* verificationStatus MS

* onset[x] MS
* onset[x] only dateTime
* onset[x] ^short = "When the condition began — required for problem-list entries"

* recordedDate MS
* recorder MS
* note MS
