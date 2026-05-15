# Validatiemethode

De validatie is ontworpen voor twee soorten fouten:

1. Technische fouten: ongeldige JSON, ontbrekende bestanden, dubbele ID’s, kapotte verwijzingen.
2. Modelmatige fouten: micro-observaties die direct scoren, onopgeloste relaties, adapters die semantiek mogen overschrijven.

## Uitvoeren

Vanuit de pakketmap:

```bash
python3 scripts/validate_ssot.py .
```

Het script schrijft:

```text
reports/validation_report.json
analytics_exports/validation_checks.csv
```

## Getoetste hoofdregels

- Alle JSON-bestanden moeten parsebaar zijn.
- Alle vereiste modules uit `ssot.family.json` moeten bestaan.
- Er moeten 18 rubrics zijn.
- Elke rubric moet 6 bands hebben.
- Er moeten 108 bands zijn.
- Elke band moet een bestaande microdescriptor hebben.
- Er moeten 108 microdescriptoren zijn.
- Microdescriptoren mogen geen directe bandscore zetten.
- Micro-observaties mogen geen directe bandscore zetten.
- Er moeten 44 opgeloste relation checks zijn.
- Relation checks mogen geen onbekende rubrics noemen.
- Constraints mogen geen onbekende bands noemen.
- Er moeten 58 canonieke commands zijn.
- Fix command registry moet exact gelijk zijn aan de command library.
- Werkvormen moeten naar bestaande commands verwijzen.
- Adapters mogen geen verboden semantische velden overschrijven.
- Runtime moet read-only zijn.

## Interpretatie

- `PASS`: technisch controleerbaar en consistent.
- `FAIL`: niet opleveren als reviewversie.
- `warnings`: inhoudelijk of migratiegerelateerd nakijken, maar niet altijd blokkerend.
