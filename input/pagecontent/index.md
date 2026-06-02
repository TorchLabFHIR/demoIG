# TorchLab Demo IG

This Implementation Guide is a demonstration project built with [SUSHI](https://fshschool.org)
to illustrate FHIR profiling patterns for care-coordination patient summaries.

It is published as an example alongside the
[`TorchLabFHIR/fhir-check`](https://github.com/TorchLabFHIR/fhir-check) GitHub Action,
which validates FHIR IG dependency packages against the TorchLab registry on every commit.

---

## Scope

The guide covers a minimal but realistic set of clinical data for a patient handoff summary:

| Resource | Profile | Purpose |
|---|---|---|
| Patient | [TD Patient](StructureDefinition-td-patient.html) | Core demographics + preferred contact |
| Observation | [TD Vital Signs](StructureDefinition-td-vital-signs.html) | Blood pressure, heart rate, BMI |
| Condition | [TD Condition](StructureDefinition-td-condition.html) | Active problem list |
| AllergyIntolerance | [TD Allergy Intolerance](StructureDefinition-td-allergy-intolerance.html) | Medication and substance allergies |

---

## Dependencies

| Package | Version | Role |
|---|---|---|
| `hl7.fhir.us.core` | 6.1.0 | Base profiles for US patient data |
| `hl7.fhir.uv.ips` | 1.1.0 | International Patient Summary alignment |

Dependencies are validated automatically on every commit using the
[TorchLab FHIR Check](https://github.com/TorchLabFHIR/fhir-check) GitHub Action.
