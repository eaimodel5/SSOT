# Modelgrenzen en gebruiksregels

## Dit pakket is geschikt voor

- externe datacontrole;
- schema- en referentiecontrole;
- aansluiting van tools via adapters;
- runtime-export voor testomgevingen;
- analyse van rubrics, bands, constraints, commands en werkvormen.

## Dit pakket is nog niet automatisch productie-goedgekeurd

De status is review-ready. Voor productie is nog nodig:

- inhoudelijke eigenaar keurt de release goed;
- eventuele tool-adapters worden apart gevalideerd;
- logging wordt getest met echte sessiedata;
- runtime-integratie wordt getest in de doelomgeving.

## Belangrijke grenzen

1. De SSOT bepaalt betekenis, maar beoordeelt geen leerling zonder bewijs.
2. Micro-observaties zijn signalen, geen directe scores.
3. Commands zijn intenties, geen verplichte promptteksten.
4. Werkvormen mogen fixes uitvoeren, maar mogen geen rubricbetekenis wijzigen.
5. Runtimebestanden zijn afgeleid en read-only.
6. Lokale tools mogen eigen UI en templates hebben, maar geen canonieke semantiek aanpassen.

## Wat een reviewer vooral moet testen

- Zijn de constraints inhoudelijk niet te streng of te zwak?
- Zijn de tracevelden voldoende voor latere analyse?
- Is de adaptergrens duidelijk genoeg?
- Zijn commands en werkvormen goed te onderscheiden?
- Zijn oude en nieuwe rubric-ID’s voldoende herleidbaar?
