Extension: TDClinicalPriority
Id: td-clinical-priority
Title: "TD Clinical Priority"
Description: """
  A flag indicating the care-team triage priority of a condition or problem-list
  entry: routine, urgent, or stat. Helps care coordinators surface the most
  pressing issues during handoffs.
"""
Context: Condition

* value[x] only code
* value[x] from http://hl7.org/fhir/ValueSet/request-priority (required)
* value[x] ^short = "routine | urgent | stat"
