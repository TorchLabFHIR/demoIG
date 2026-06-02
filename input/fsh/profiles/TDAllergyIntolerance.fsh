Profile: TDAllergyIntolerance
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance
Id: td-allergy-intolerance
Title: "TD Allergy Intolerance"
Description: """
  Allergy and intolerance profile for the TorchLab Demo IG. Extends
  US Core AllergyIntolerance to constrain patient to a TD Patient and
  surface recorder and note as must-support elements.
"""

* patient only Reference(TDPatient)

* clinicalStatus MS
* verificationStatus MS
* type MS
* category MS
* criticality MS

* reaction MS
* reaction.manifestation MS
* reaction.severity MS

* recorder MS
* note MS
* recordedDate MS
