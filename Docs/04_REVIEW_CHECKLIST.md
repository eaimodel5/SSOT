# Review checklist voor data-analist

## Stap 1: integriteit

- [ ] ZIP is volledig uitgepakt.
- [ ] `ssot.family.json` bestaat.
- [ ] `reports/integrity_manifest.json` bestaat.
- [ ] Checksums zijn reproduceerbaar.

## Stap 2: technische validatie

- [ ] Run `python3 scripts/validate_ssot.py .`.
- [ ] Controleer dat `status` in `reports/validation_report.json` gelijk is aan `PASS`.
- [ ] Controleer `analytics_exports/validation_checks.csv` op `passed=false`.

## Stap 3: rubricstructuur

- [ ] `rubrics.csv` bevat 18 rubrics.
- [ ] `bands.csv` bevat 108 bands.
- [ ] Elke rubric heeft bands 0 tot en met 5.
- [ ] Band-ID’s zijn stabiel en logisch opgebouwd.

## Stap 4: bewijslaag

- [ ] Elke band heeft een microdescriptor.
- [ ] Microdescriptoren beschrijven observeerbaar gedrag.
- [ ] Microdescriptoren zetten geen directe score.

## Stap 5: constraints en relaties

- [ ] `relation_checks.csv` bevat 44 regels.
- [ ] Geen enkele regel heeft `review_required=true`.
- [ ] Harde constraints zijn echt blokkades.
- [ ] Soft constraints zijn waarschuwingen en geen verborgen blokkades.
- [ ] Synergieën verhogen interpretatie, maar vervangen geen bewijs.

## Stap 6: fix-routing

- [ ] `/fix` wordt niet als vaste prompt behandeld.
- [ ] Commands zijn intenties, geen verplichte letterlijke promptteksten.
- [ ] Werkvormen kunnen fixes uitvoeren.
- [ ] Harde fixes zijn beperkt tot harde constraints of veiligheidsgrenzen.

## Stap 7: adapterveiligheid

- [ ] `forbidden_overlays` bevat rubrics, bands, score_ranges, command_meanings, trace_schema en scoring_semantics.
- [ ] `allowed_overlays` bevat alleen UX, workflow, input/output, templates en zichtbaarheid.
- [ ] Runtimebestanden zijn read-only.

## Stap 8: trace en analyse

- [ ] Tracevelden zijn geschikt voor latere data-analyse.
- [ ] Elke tool kan rubric-ID, band-ID, command-ID, adapter-ID en SSOT-versie loggen.
- [ ] Extra toolvelden mogen toegevoegd worden zonder canonieke velden te herdefiniëren.
