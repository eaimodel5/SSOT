# SSOT 17.0.0-rc.1: reviewer brief

Dit pakket is een tool-neutrale Single Source of Truth voor didactische beoordeling, interventies, logging en runtime-aansluiting. Het is gemaakt als release candidate voor externe controle.

## Wat moet de reviewer weten?

- De inhoudelijke basis is het Gamma-model.
- De bestuurlijke laag komt uit de eerdere SSOT-versie 16.2.
- Scoringonderdelen komen uit versie 15.9.
- Micro-observaties komen uit versie 1.0.0.
- Formatieve werkvormen en fix-routing zijn toegevoegd na code- en gebruiksanalyse.

## Wat is de hoofdstructuur?

```text
ssot.family.json                  startpunt en modulelijst
core/ssot.core.17.0.0.json         identiteit, model, rubricregister
modules/*.json                     inhoudelijke modules
schemas/adapter.schema.17.0.0.json aansluitcontract voor tools
adapters/generic.adapter.template.json generieke adaptertemplate
runtime/generic.effective_ssot.json samengestelde runtime-export
analytics_exports/*.csv            platte controletabellen
reports/*.json / *.md              validatie en verantwoording
scripts/*.py                       reproduceerbare build en validatie
```

## Belangrijkste getallen

| Onderdeel | Aantal |
|---|---:|
| Rubrics | 18 |
| Bands | 108 |
| Microdescriptoren | 108 |
| Relation checks | 44 |
| Harde constraints | 6 |
| Zachte constraints | 5 |
| Synergieën | 4 |
| Canonieke commands | 58 |
| Formatieve werkvormen | 49 |
| Legacy werkvormcategorieën | 15 |
| Micro-observaties | 6 |

## Belangrijke ontwerpregel

Een tool mag de SSOT gebruiken via een adapter. Een tool mag de canonieke betekenis niet wijzigen.

Daarom zijn onder andere verboden:

- rubric-ID’s wijzigen
- band-ID’s wijzigen
- scoregrenzen wijzigen
- commandbetekenis wijzigen
- flagbetekenis wijzigen
- tracevelden herdefiniëren
- constraints overschrijven

## Status

Status: `review_ready_external_control`  
Release: `17.0.0-rc.1`  
Aangemaakt: `2026-05-15T21:42:24+00:00`

Dit pakket is af voor controle. Voor productiegebruik blijft menselijke goedkeuring nodig.
