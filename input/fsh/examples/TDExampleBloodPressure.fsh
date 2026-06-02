Instance: TDExampleBloodPressure
InstanceOf: TDVitalSigns
Title: "Example Blood Pressure — Jane Smith"
Description: "A blood pressure panel observation for the example patient, conforming to the TD Vital Signs profile."
Usage: #example

* id = "td-example-bp"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(TDExamplePatient)
* effectiveDateTime = "2026-05-15T09:30:00Z"
* performer[0] = Reference(TDExamplePractitioner)
* note[0].text = "Measured after 5 min rest, left arm, seated."
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 118 'mm[Hg]' "mmHg"
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 76 'mm[Hg]' "mmHg"

Instance: TDExampleHeartRate
InstanceOf: TDVitalSigns
Title: "Example Heart Rate — Jane Smith"
Description: "A heart rate observation for the example patient."
Usage: #example

* id = "td-example-hr"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#8867-4 "Heart rate"
* subject = Reference(TDExamplePatient)
* effectiveDateTime = "2026-05-15T09:30:00Z"
* valueQuantity = 68 '/min' "beats/min"

Instance: TDExamplePractitioner
InstanceOf: Practitioner
Title: "Example Practitioner — Dr. Rivera"
Description: "A practitioner referenced by example observations."
Usage: #example

* id = "td-example-practitioner"
* name[0].family = "Rivera"
* name[0].given[0] = "Maria"
* name[0].prefix[0] = "Dr."
