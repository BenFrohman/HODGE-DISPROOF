# The type of a Hodge counterexample term

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0
**Repository:** https://github.com/BenFrohman/HODGE-DISPROOF
**Clay tag:** `clay-statement-open` / `v1.1.0-schema`

> This note records a Lean 4 *type*. It is not a disproof of the Clay Hodge conjecture.

## 1. Official statement (Π, not Σ)

The Hodge conjecture is a Π-sentence over smooth complex projective varieties:

```
∀ X, ∀ γ ∈ Hdg(X), ∃ z, cl_X(z) = γ
```

A disproof would require a geometric Σ-tuple: a concrete smooth complex
projective variety `X`, a valid rational Hodge class `γ`, and a closed
lemma proving non-algebraicity.

Deligne / Clay: every class in `H^{2k}(X,ℚ) ∩ H^{k,k}(X)` is a `ℚ`-linear
combination of classes of algebraic cycles.

## 2. What a local kernel check certifies

In `BenFrohman/HODGE` and this repository, checking

```
⟨D_bad, γ_bad, λ z h_cl => false_of_bad_cl h_cl⟩
```

does not achieve congruence with the Clay statement. The kernel certifies
consistency relative to the custom definitions provided.

On `zeroCycle`, `cl` unfolds to the zero linear map and `γ_bad = 1`.
The kernel equation reduces by δ-unfolding to `0 = 1`, closed by
`zero_ne_one`.

Open arithmetic such as `z.deg * 2 = 5` does not reduce by `decide`
(which requires closed numerals). It is closed by linear integer arithmetic
(`omega`). That even/odd model is the same species as `zeroCycle`: the
obstruction is written into the definition of `cl`.

See `docs/KERNEL_CHECK.md`.

## 3. Datum interface

```lean
def isHodgeDisproof (D : Datum Z V N) (γ : V) : Prop :=
  γ ∈ D.hodgeClasses ∧ ∀ z : Z, D.cl z = γ → False
```

A packed term is `HodgeDisproof` (`D_bad`, `γ_bad`, `γ_isHodge`, `no_cycle`).
`isHodgeDisproof D γ` implies `¬ D.HodgeConjecture`.

On `zeroCycle` (`cl = 0`, `γ = 1`) the third field reduces definitionally
to `0 = 1`. `rfl` proves `cl z = 0`; it does not prove `0 = 1`.

On `ℝ^4`, the Klein quadric, and `ℝ^2 × ℝ^2` the encoding uses `cl = id`,
so `rfl` constructs the cycle. `false_of_bad_cl` is uninhabited there.

## 4. Host comparison

| Host | Definition of `cl` | Normal form of `cl z` | Goal `cl z = γ` | Tactic | Status |
| --- | --- | --- | --- | --- | --- |
| `zeroCycle` | `0` | `0` | `0 = 1` | `exact zero_ne_one` | gadget |
| even/odd model | `z → 2 · deg(z)` | `z.deg * 2` | `z.deg * 2 = 5` | `omega` | gadget; `decide` fails |
| `ℝ^4` | `LinearMap.id` | `z` | `z = γ` | `rfl` | Hodge holds in the encoding |
| Klein `Q^4` | `id` | `z` | `z = γ` | `rfl` | Hodge holds in the encoding |
| `ℝ^2 × ℝ^2` | `id` | `z` | `z = γ` | `rfl` | Hodge holds in the encoding |
| geometric host | `CH^k(X)_ℚ → H^{2k}(X,ℚ)` | not a numeral | `cl_X z = γ` | not `rfl` / not `decide` | missing |

## 5. Geometric host type

The map that would matter for Clay is

```
cl_X : CH^k(X)_ℚ → H^{2k}(X,ℚ)
```

on a named smooth complex projective fourfold, with `γ` in `H^{2k} ∩ H^{k,k}`.

`Hodge/GeometricHost.lean` records those names as `SmoothComplexProj` and
`CycleClassData`. Mathlib 4.22 does not implement Chow groups or Hodge
decomposition over `ℂ`. Declaring the type does not inhabit it.

Named fourfolds recorded as labels: `ℝ^4`, Klein `Q^4`, `ℝ^2 × ℝ^2`.
In the sister encoding they satisfy `HodgeConjecture`.

## 6. Three primitives still required for a Clay close

1. A named nonsingular complex projective variety `X`, given by explicit
   polynomial equations in `ℝ^n` (or an equivalent construction), with a
   nonsingularity proof (Jacobian criterion).
2. A named class `γ ∈ H^{2k}(X,ℚ) ∩ H^{k,k}(X)`: a verified rational
   cohomology class in the Hodge lattice.
3. A global non-algebraicity lemma: a proof that geometric `cl_X` misses
   `γ`. That implication cannot reduce to a numeral identity and cannot be
   evaluated by `rfl` or `decide`.

None of the three is supplied. `ClayDisproof` in `GeometricHost.lean` is
an uninhabited Σ-type.

## 7. Evidence ledger

Exists:

- the type `isHodgeDisproof` / `HodgeDisproof`;
- gadget inhabitant `zeroCycle` (`cl = 0`, `γ = 1`);
- integral Hodge is independently false (Atiyah–Hirzebruch, Kollár);
- compact Kähler non-projective Hodge is independently false (Voisin 2002).

Does not exist:

- a geometric inhabitant of `isGeometricDisproof`;
- Mathlib congruence of `cl` with `CH^k(X)_ℚ → H^{2k}(X,ℚ)`.

Firewall: missing instance ≠ Hodge is false; `zeroCycle` ≠ a fourfold;
mentioning `cl_X` ≠ a close.

Clay status: **open**.
