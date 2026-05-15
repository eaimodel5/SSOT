.PHONY: validate runtime test clean-reports

validate:
	python scripts/validate_ssot.py

runtime:
	python scripts/build_runtime.py

test: validate runtime validate

clean-reports:
	rm -f reports/validation_report.json analytics_exports/validation_checks.csv
