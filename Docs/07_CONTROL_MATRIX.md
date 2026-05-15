# Controlematrix

| Controleregel | Bestand | Blokkerend? | Geautomatiseerd? |
|---|---|---:|---:|
| Alle JSON parsebaar | alle `.json` | ja | ja |
| Vereiste modules bestaan | `ssot.family.json` | ja | ja |
| 18 rubrics aanwezig | `ssot.rubrics` | ja | ja |
| 6 bands per rubric | `ssot.rubrics` | ja | ja |
| 108 microdescriptoren | `ssot.microdescriptors` | ja | ja |
| Elke band heeft descriptor | rubrics + microdescriptors | ja | ja |
| Micro-observaties scoren niet direct | `ssot.micro_observations` | ja | ja |
| 44 relation checks opgelost | `ssot.constraints` | ja | ja |
| Constraints verwijzen naar bestaande bands | `ssot.constraints` | ja | ja |
| 58 commands aanwezig | `ssot.commands` | ja | ja |
| Fix registry gelijk aan command library | commands + fix-routing | ja | ja |
| Werkvormcommands bestaan | workforms + commands | ja | ja |
| Adapter mag geen semantiek overschrijven | adapter + governance | ja | ja |
| Runtime read-only | runtime + governance | ja | ja |
| Hard/soft/synergy inhoudelijk passend | constraints | ja | nee, reviewer |
| Trace bruikbaar voor analyse | trace | ja | deels |
| Legacy mapping inhoudelijk voldoende | compatibility | nee | deels |
