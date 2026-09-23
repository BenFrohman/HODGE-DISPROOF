# HODGE-DISPROOF

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Copyright:** (c) 2026 Benjamin Stanley Frohman. All rights reserved under the Apache License, Version 2.0.
**License:** Apache-2.0. See `LICENSE`, `NOTICE.md`, `AUTHORS.md`, and `COPYRIGHT`.
**Clay tag:** `clay-statement-open`. See `docs/CLAY_TAG.md`.

**Visibility: public.** Anyone may clone, fork, and open issues without authentication for read access.

```
git clone https://github.com/BenFrohman/HODGE-DISPROOF.git
```

This repository records the Lean 4 **type** of a counterexample to the Hodge statement. It is **not** a Clay close. The rational Hodge conjecture remains **open**.

Sister skeleton: [BenFrohman/HODGE](https://github.com/BenFrohman/HODGE).

## Access

| Field | Value |
|---|---|
| URL | https://github.com/BenFrohman/HODGE-DISPROOF |
| Visibility | public |
| Default branch | `main` (`d9846fef`) |
| Schema branches | `v1.0.0-schema`, `v1.1.0-schema` |
| Issues | enabled |
| Pull requests | enabled |
| Forking | enabled |
| Branch protection | off |
| License | Apache-2.0 |

## Lean 4

| File | Role |
|---|---|
| `Hodge/Basic.lean` | `Datum` skeleton |
| `Hodge/Disproof.lean` | `isHodgeDisproof` / gadget `zeroCycle` |
| `Hodge/ClayBlueprint.lean` | geometric axioms and `ClayDisproofStatement` |
| `Hodge/ClayStructure.lean` | typeclass gate; no instance |
| `Hodge/GeometricDictionary.lean` | mock → geometric dictionary |
| `Hodge/GeometricHost.lean` | named fourfold labels |
| `Hodge/ClaySpec.lean` | uninhabited `ClayDisproofTerm` |

`zeroCycle` is quarantined. It cannot inhabit `ClayDisproofStatement`.

## Firewall

- missing instance ≠ Hodge is false
- `zeroCycle` ≠ a counterexample
- a global miss axiom ≠ a disproof
- Clay status for rational Hodge remains **open**
