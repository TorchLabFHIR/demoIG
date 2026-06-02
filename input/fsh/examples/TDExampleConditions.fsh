Instance: TDExampleHypertension
InstanceOf: TDCondition
Title: "Example Condition — Hypertension"
Description: "An active hypertension problem-list entry for the example patient, marked urgent priority."
Usage: #example

* id = "td-example-hypertension"
* extension[priority].valueCode = #urgent
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code = http://snomed.info/sct#38341003 "Hypertensive disorder, systemic arterial"
* subject = Reference(TDExamplePatient)
* onsetDateTime = "2019-03-10"
* recordedDate = "2019-03-15"
* note[0].text = "Well-controlled on lisinopril 10 mg daily. Monitor quarterly."


Instance: TDExampleDiabetes
InstanceOf: TDCondition
Title: "Example Condition — Type 2 Diabetes"
Description: "An active Type 2 diabetes mellitus problem-list entry for the example patient."
Usage: #example

* id = "td-example-diabetes"
* extension[priority].valueCode = #routine
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code = http://snomed.info/sct#44054006 "Diabetes mellitus type 2"
* subject = Reference(TDExamplePatient)
* onsetDateTime = "2021-08-22"
* recordedDate = "2021-08-30"
* note[0].text = "Diet-controlled. HbA1c 6.9% as of last visit."


Instance: TDExamplePenicillinAllergy
InstanceOf: TDAllergyIntolerance
Title: "Example Allergy — Penicillin"
Description: "A penicillin allergy record for the example patient conforming to the TD AllergyIntolerance profile."
Usage: #example

* id = "td-example-penicillin-allergy"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category[0] = #medication
* criticality = #high
* code = http://www.nlm.nih.gov/research/umls/rxnorm#7980 "Penicillin"
* patient = Reference(TDExamplePatient)
* recordedDate = "2008-06-01"
* recorder = Reference(TDExamplePractitioner)
* reaction[0].substance = http://www.nlm.nih.gov/research/umls/rxnorm#7980 "Penicillin"
* reaction[0].manifestation[0] = http://snomed.info/sct#271807003 "Eruption of skin"
* reaction[0].severity = #severe
* note[0].text = "Reported by patient. Hives and throat tightening within 30 min of first dose as a child."
