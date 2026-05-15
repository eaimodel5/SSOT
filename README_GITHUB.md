# SSOT 17.0.0-rc.1 GitHub-ready package

Run locally:

```bash
python scripts/validate_ssot.py
python scripts/build_runtime.py
python scripts/validate_ssot.py
```

Or:

```bash
make test
```

The repository includes a GitHub Actions workflow at `.github/workflows/validate-ssot.yml`.

Expected status: `PASS` with `1661` checks, `0` errors and `0` warnings.
