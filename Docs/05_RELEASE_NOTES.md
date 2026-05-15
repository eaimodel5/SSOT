# Release notes

## Release

`17.0.0-rc.1`

Status: `review_ready_external_control`

## Wijzigingen ten opzichte van de vorige candidate

1. Validatiescript hersteld.
   - De eerdere versie stopte te vroeg.
   - Fix-routingchecks worden nu echt uitgevoerd.

2. Reviewdocumentatie toegevoegd.
   - Reviewer brief.
   - Data dictionary.
   - Validatiemethode.
   - Review checklist.
   - Modelgrenzen.

3. CSV-exports toegevoegd voor data-analyse.
   - Rubrics, bands, microdescriptoren, constraints, relation checks, commands, werkvormen en validatiechecks.

4. Release-status aangescherpt.
   - Alle JSON-modules staan op `review_ready_external_control`.
   - Productiegebruik blijft geblokkeerd tot menselijke goedkeuring.

5. Integriteitsmanifest toegevoegd.
   - Per bestand is pad, omvang en SHA256 opgenomen.

## Inhoudelijk overgenomen uit eerdere stappen

- 18 Gamma-rubrics.
- 108 bands.
- 44 opgeloste relation checks.
- Fix-routing als resolver, niet als vaste prompt.
- Formatieve werkvormen als fix-kandidaten.
- Read-only runtime-export.
- Adapterregels met verboden semantische overrides.
