# Profiles

This IG defines four profiles, two extensions, one code system, and one value set.

---

## Patient

**[TD Patient](StructureDefinition-td-patient.html)** extends
[US Core Patient](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient).

Key constraints:
- `birthDate` is required (1..1)
- `name.family` is required (1..1)
- Carries the [TD Preferred Contact](StructureDefinition-td-preferred-contact.html) extension (0..1)

---

## Vital Signs

**[TD Vital Signs](StructureDefinition-td-vital-signs.html)** extends the base FHIR `Observation` resource.

Key constraints:
- `category` is fixed to `vital-signs`
- `subject` is constrained to a [TD Patient](StructureDefinition-td-patient.html)
- `effective[x]` is required and restricted to `dateTime`
- Supports component-based observations (e.g. blood pressure panel)

---

## Condition

**[TD Condition](StructureDefinition-td-condition.html)** extends
[US Core Condition Problems and Health Concerns](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns).

Key constraints:
- `subject` is constrained to a [TD Patient](StructureDefinition-td-patient.html)
- `clinicalStatus` is required
- Carries the [TD Clinical Priority](StructureDefinition-td-clinical-priority.html) extension (0..1)

---

## Allergy Intolerance

**[TD Allergy Intolerance](StructureDefinition-td-allergy-intolerance.html)** extends
[US Core AllergyIntolerance](http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance).

Key constraints:
- `patient` is constrained to a [TD Patient](StructureDefinition-td-patient.html)
- `recorder` and `note` are must-support

---

## Extensions

| Extension | Applies to | Description |
|---|---|---|
| [TD Preferred Contact](StructureDefinition-td-preferred-contact.html) | Patient | How the patient prefers to be contacted |
| [TD Clinical Priority](StructureDefinition-td-clinical-priority.html) | Condition | Triage priority: `routine`, `urgent`, or `stat` |

---

## Terminology

| Resource | Description |
|---|---|
| [TD Contact Method CS](CodeSystem-td-contact-method.html) | Codes for `phone`, `sms`, `email`, `video`, `in-person` |
| [TD Contact Method VS](ValueSet-td-contact-method-vs.html) | Value set used by the preferred-contact extension |
