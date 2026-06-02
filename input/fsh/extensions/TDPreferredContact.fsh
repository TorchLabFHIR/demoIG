Extension: TDPreferredContact
Id: td-preferred-contact
Title: "TD Preferred Contact Method"
Description: """
  The patient's preferred method of contact for care-team communication
  (phone, SMS, email, video, or in-person). Bound to TDContactMethodVS.
"""
Context: Patient

* value[x] only CodeableConcept
* value[x] from TDContactMethodVS (required)
* value[x] ^short = "Preferred contact method"
