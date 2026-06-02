# Usage Guide

## Building the IG

Prerequisites: Java 17+, Node.js 18+, SUSHI 3.x.

```bash
# Install the Torch CLI (optional but recommended)
npm install -g @torchlab/fhir

# Install SUSHI
npm install -g fsh-sushi

# Compile FSH → FHIR resources
sushi .

# Run the IG Publisher
torch run          # or: ./_genonce.sh / _genonce.bat
```

After a successful build, open `output/index.html` in a browser.

---

## Validating a resource

The [TD Patient](StructureDefinition-td-patient.html) profile adds `birthDate` (required) and the
preferred-contact extension on top of US Core. To validate an instance against it:

```bash
# Validate using the Torch CLI
torch validate Patient-example.json \
  -ig torchlab.fhir.demo#0.1.0 \
  -profile http://torchlab.dev/fhir/demo/StructureDefinition/td-patient
```

---

## CI integration

Add the following workflow to `.github/workflows/fhir-check.yml` in your own IG repository
to validate all declared dependencies on every push:

```yaml
name: FHIR Check
on: [push, pull_request]

jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: TorchLabFHIR/fhir-check@v1
        with:
          fail-on-missing: true
          fail-on-deprecated: true
```

See the [TorchLab FHIR Check](https://github.com/TorchLabFHIR/fhir-check) action
for the full list of inputs, outputs, and configuration options.
