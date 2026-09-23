# HODGE-DISPROOF

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Copyright:** (c) 2026 Benjamin Stanley Frohman. All rights reserved under the Apache License, Version 2.0.
**License:** Apache-2.0. See `LICENSE`, `NOTICE.md`, `AUTHORS.md`, and `COPYRIGHT`.
**Clay tag:** `clay-statement-open` / `v1.0.0-schema`. See `docs/CLAY_TAG.md`.

This repository records the Lean 4 **type** of a counterexample to the Hodge statement

```
∀ D γ, ∃ z, cl z = γ
```

A term of the negation is the triple

```
(D_bad,  γ_bad,  ∀ z, cl z = γ_bad → False)
```

plus the side-condition that `γ_bad` is a Hodge class.

**This is not a Clay close.** The rational Hodge conjecture on smooth complex
projective varieties remains **open**. Sister skeleton: [BenFrohman/HODGE](https://github.com/BenFrohman/HODGE).

## Public priority release

| Field | Value |
|---|---|
| Repository | https://github.com/BenFrohman/HODGE-DISPROOF |
| Visibility | public |
| Release | `v1.0.0-schema` |
| Clay tag | `clay-statement-open` |
| Date | 23 September 2026 |
| Status | schema + gadget inhabitant; not a geometric fourfold |

See `docs/RELEASE.md`.

## Lean 4

Interface lives in `Hodge/Basic.lean` (Datum, `cl`, `HodgeConjecture`).
The disproof type lives in `Hodge/Disproof.lean`.

```lean
structure HodgeDisproof (Z V N : Type*)
    [AddCommGroup Z] [Module Rat Z]
    [AddCommGroup V] [Module Rat V]
    [AddCommGroup N] [Module Rat N] where
  D_bad     : Datum Z V N
  γ_bad     : V
  γ_isHodge : γ_bad ∈ D_bad.hodgeClasses
  no_cycle  : ∀ z : Z, D_bad.cl z = γ_bad → False
```

The only inhabited term in this repository is `zeroCycleDisproof`:
`D_bad = zeroCycle` (`cl = 0`, `obstruction = 0`, `codim = 2`), `γ_bad = 1`.
That gadget is **not a variety** and is **not** a Clay counterexample.

Pins: Lean 4.22.0, mathlib v4.22.0. See `lean-toolchain` and `PIN`.

## Evidence ledger

**Exists**

- Logical form: `¬∀D∀γ∃z (cl z = γ)` unpacks as `∃D∃γ∀z (cl z = γ → False)`.
- `zeroCycle_not_hodge` / `zeroCycleDisproof` inhabit that type on a linear-algebra sentinel.
- Integral Hodge is false: Atiyah–Hirzebruch (1961); Kollár (1992).
- Compact Kähler non-projective Hodge is false: Voisin (2002).

**Does not exist**

- No accepted pair `(X, γ)` with `X` a smooth complex projective variety and `γ` a rational Hodge class outside the image of `cl`.
- No `HodgeDisproof` term whose `D_bad` is a geometric fourfold.

## Firewall

- missing instance ≠ Hodge is false
- `zeroCycle` ≠ a counterexample
- a finite list of hosts ≠ `∀ D`
- Clay status for rational Hodge remains **open**

## Citation

See `CITATION.cff`. Cite as a formal schema, not as a disproof of the Millennium problem.
