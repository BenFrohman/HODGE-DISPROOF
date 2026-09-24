# HODGE-DISPROOF

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Copyright:** (c) 2026 Benjamin Stanley Frohman. Apache License 2.0.
**License:** Apache-2.0. See `LICENSE`, `NOTICE.md`, `AUTHORS.md`, `COPYRIGHT`.
**Clay tag:** `clay-statement-open`. See `docs/CLAY_TAG.md`.
**Visibility:** public. Forking allowed. Issues enabled. No repository rulesets.

https://github.com/BenFrohman/HODGE-DISPROOF

This repository records the Lean 4 **type** of a Hodge counterexample term.
It is **not** a Clay close. The rational Hodge conjecture remains **open**.

## Access

| Field | Value |
|---|---|
| Visibility | public |
| Default branch | `main` |
| Forking | allowed |
| Issues | enabled |
| Rulesets | none |
| License | Apache-2.0 |
| Clone | `git clone https://github.com/BenFrohman/HODGE-DISPROOF.git` |

## Lean files

| File | Role |
|---|---|
| `Hodge/Basic.lean` | `Datum`, `HodgeConjecture` |
| `Hodge/Disproof.lean` | `isHodgeDisproof`, gadget `zeroCycle` (quarantined) |
| `Hodge/FalseOfBadCl.lean` | third-field reduction on the gadget |
| `Hodge/Typecheck.lean` | Prop vs structure |
| `Hodge/GeometricHost.lean` | named fourfolds as labels |
| `Hodge/GeometricDictionary.lean` | Z/V/N/cl → Chow/Betti/OffDiag/cl_X |
| `Hodge/ClayStructure.lean` | typeclass gate; no gadget instance |
| `Hodge/ClaySpec.lean` | uninhabited `ClayDisproofTerm` |
| `Hodge/ClayBlueprint.lean` | axiomatic Clay Σ-sentence; no miss axiom |

## Docs

`docs/CLAY_BLUEPRINT.md`, `docs/CLAY_DISPROOF_SPEC.md`, `docs/CLAY_STRUCTURE.md`, `docs/CLAY_TAG.md`, `docs/GEOMETRIC_REPLACEMENT.md`, `docs/KERNEL_CHECK.md`, `docs/RELEASE.md`, `papers/PREPRINT.md`.

## Firewall

- missing instance ≠ Hodge is false
- `zeroCycle` ≠ a counterexample
- a typeclass or axiom naming `cl_X` ≠ a disproof
- Clay status for rational Hodge remains **open**
