# GitHub runbook

## What this repository contains

This repository contains a review-ready SSOT family package. It is data-first: JSON modules are the source files, CSV files are review exports, and Python scripts validate structure and references.

## Minimal local run

From the repository root:

```bash
python scripts/validate_ssot.py
python scripts/build_runtime.py
python scripts/validate_ssot.py
```

Or, if `make` is available:

```bash
make test
```

Expected result:

```json
{
  "status": "PASS",
  "check_count": 1661,
  "errors": [],
  "warnings": []
}
```

## GitHub Actions

The workflow `.github/workflows/validate-ssot.yml` runs on:

- push to `main` or `master`
- pull request
- manual workflow dispatch

It performs three steps:

1. validate all JSON and SSOT rules
2. rebuild the runtime export
3. validate again after rebuilding

The workflow uploads these artifacts:

- `reports/validation_report.json`
- `analytics_exports/validation_checks.csv`
- `runtime/generic.effective_ssot.json`

## Suggested branch protection

For review use, protect the main branch and require the `Validate SSOT` workflow to pass before merge.

## Release tag suggestion

Use a release tag such as:

```text
v17.0.0-rc.1
```

This package is marked as review-ready, not production-approved.
