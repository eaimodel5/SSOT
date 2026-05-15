# Data dictionary

## Hoofdentiteiten

| Entiteit | Bestand | Betekenis |
|---|---|---|
| Family | `ssot.family.json` | Startpunt, modulelijst en bronmanifest. |
| Core | `core/ssot.core.17.0.0.json` | Modelidentiteit, perspectieven en rubricregister. |
| Rubric | `modules/ssot.rubrics.17.0.0.json` | Hoofddimensie waarop gedrag, taak of interactie beoordeeld wordt. |
| Band | `modules/ssot.rubrics.17.0.0.json` | Ordinale categorie 0 tot en met 5 binnen een rubric. |
| Microdescriptor | `modules/ssot.microdescriptors.17.0.0.json` | Observeerbaar bewijs bij één band. |
| Micro-observatie | `modules/ssot.micro_observations.17.0.0.json` | Klein detectiesignaal. Dit mag geen directe score zetten. |
| Constraint | `modules/ssot.constraints.17.0.0.json` | Regel over toegestane of verdachte combinaties. |
| Relation check | `modules/ssot.constraints.17.0.0.json` | Opgeloste relatie tussen rubrics, met handhavingstype. |
| Command | `modules/ssot.commands.17.0.0.json` | Canonieke interventie-intentie. Geen vaste prompt. |
| Fix-routing | `modules/ssot.fix_routing.17.0.0.json` | Regels om van signaal naar passende fix of werkvorm te gaan. |
| Werkvorm | `modules/ssot.formative_workforms.17.0.0.json` | Formatieve activiteit die een fix kan uitvoeren. |
| Trace | `modules/ssot.trace.17.0.0.json` | Minimale loggingvelden voor analyse en audit. |
| Adapter | `adapters/generic.adapter.template.json` | Veilige aansluiting voor een tool. |
| Runtime | `runtime/generic.effective_ssot.json` | Samengevoegde read-only export. Niet de master. |

## Bandschaal

Elke rubric heeft zes bands:

| Bandwaarde | Betekenis |
|---:|---|
| 0 | Buiten scope, afwezig of niet-didactisch relevant. |
| 1 | Zeer licht of voorbereidend. |
| 2 | Startend of activerend. |
| 3 | Instructief, sturend of inhoudelijk relevant. |
| 4 | Toepassend, begeleidend of regulerend. |
| 5 | Hoog risico, zware invloed of summatieve/structurele impact. |

De precieze betekenis verschilt per rubric en staat in de bandbeschrijving.

## Fix-routing

Een fix is geen vaste prompt. Een fix is een selectie-uitkomst.

De route is:

```text
signaal + fase + band + bewijs + context -> fix-router -> command of werkvorm -> kanaal -> trace
```

Daarmee kunnen korte prompts, docentacties, werkvormen en harde guards naast elkaar bestaan.

## CSV-bestanden

De map `analytics_exports/` bevat platte tabellen voor controle. Begin met:

1. `rubrics.csv`
2. `bands.csv`
3. `relation_checks.csv`
4. `commands.csv`
5. `formative_workforms.csv`
6. `validation_checks.csv`
