# TorchLab Demo IG

[![FHIR Check](https://github.com/TorchLabFHIR/demoIG/actions/workflows/fhir-check.yml/badge.svg)](https://github.com/TorchLabFHIR/demoIG/actions/workflows/fhir-check.yml)
[![TorchLab FHIR Check](https://img.shields.io/badge/TorchLab-FHIR%20Check-orange?style=flat&logo=github)](https://github.com/marketplace/actions/torchlab-fhir-check)
![FHIR R4](https://img.shields.io/badge/FHIR-R4-blue?style=flat)
![Status](https://img.shields.io/badge/status-draft-yellow?style=flat)

A demonstration FHIR Implementation Guide built with [SUSHI](https://fshschool.org) to illustrate
profiling patterns for care-coordination patient summaries.

Published as a working example for the
[`TorchLabFHIR/fhir-check`](https://github.com/TorchLabFHIR/fhir-check)
GitHub Action — which validates all IG dependency packages against the
[TorchLab registry](https://torchlab.dev) on every commit.

---

## What's in this IG

| Resource | Profile | Description |
|---|---|---|
| Patient | `td-patient` | US Core Patient + preferred-contact extension + required birth date |
| Observation | `td-vital-signs` | Blood pressure, heart rate, and other vital sign panels |
| Condition | `td-condition` | Active problem list with triage-priority extension |
| AllergyIntolerance | `td-allergy-intolerance` | Medication and substance allergies |

**Extensions:** `td-preferred-contact` · `td-clinical-priority`  
**Terminology:** `TDContactMethodCS` · `TDContactMethodVS`

---

## Dependencies

| Package | Version |
|---|---|
| `hl7.fhir.us.core` | 6.1.0 |
| `hl7.fhir.uv.ips` | 1.1.0 |

Dependencies are verified against the [TorchLab registry](https://torchlab.dev)
on every push using the FHIR Check action (see `.github/workflows/fhir-check.yml`).

---

## Build

```bash
npm install -g fsh-sushi @torchlab/fhir
sushi .
torch run
```

Open `output/index.html` after a successful build. See the
[Usage Guide](input/pagecontent/usage.md) for full instructions.

---

## Add FHIR Check to your own IG

Copy `.github/workflows/fhir-check.yml` to your own repository, or add this step
to an existing workflow:

```yaml
- uses: TorchLabFHIR/fhir-check@v1
  with:
    fail-on-missing: true
    fail-on-deprecated: false
```

Then add the status badge to your README — replace `YOUR_ORG` and `YOUR_REPO`:

```markdown
[![FHIR Check](https://github.com/YOUR_ORG/YOUR_REPO/actions/workflows/fhir-check.yml/badge.svg)](https://github.com/YOUR_ORG/YOUR_REPO/actions/workflows/fhir-check.yml)
```

Full documentation: [torchlab.dev/docs/github-action](https://torchlab.dev/docs/github-action)

---

## License

MIT — [TorchLab](https://torchlab.dev)
