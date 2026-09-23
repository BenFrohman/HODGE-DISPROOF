# The type of a Hodge counterexample term

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0
**Repository:** https://github.com/BenFrohman/HODGE-DISPROOF
**Clay tag:** `clay-statement-open` / `v1.1.0-schema`

> This note records a Lean 4 *type*. It is not a disproof of the Clay Hodge conjecture.

## 1. Official statement (Π, not Σ)

Deligne / Clay: let `X` be a nonsingular complex projective variety. Then every class in `H^{2k}(X,ℚ) ∩ H^{k,k}(X)` is a `ℚ`-linear combination of classes of algebraic cycles. In type form:

```
∀ X, ∀ γ ∈ Hdg(X), ∃ z, cl_X z = γ
```

That is a Π-sentence. A Σ-type appears only after negation:

```
∃ X, ∃ γ ∈ Hdg(X), ∀ z, cl_X z = γ → False
```

## 2. Datum interface

On the linear-algebra skeleton (`Hodge/Basic.lean`):

```lean
def isHodgeDisproof (D : Datum Z V N) (γ : V) : Prop :=
  γ ∈ D.hodgeClasses ∧ ∀ z : Z, D.cl z = γ → False
```

A packed term is `HodgeDisproof` (`D_bad`, `γ_bad`, `γ_isHodge`, `no_cycle`).
`isHodgeDisproof D γ` implies `¬ D.HodgeConjecture`.

## 3. What `false_of_bad_cl` is

The third field is a function on *one* host:

```lean
lemma false_of_bad_cl {z : Z} (h_cl : D.cl z = γ) : False
```

On `zeroCycle` (`cl = 0`, `γ = 1`) this reduces definitionally to `0 = 1` and closes by `zero_ne_one`. `rfl` proves `cl z = 0`; it does not prove `0 = 1`.

On `ℙ^4`, the Klein quadric, and `ℙ² × ℙ²` the encoding uses `cl = id`, so `rfl` *constructs* the cycle. `false_of_bad_cl` is uninhabited there.

`decide` closes closed numeral identities (`(3:ℤ)*2 = 5`). It does not close `z.deg * 2 = 5` with free `z`. That needs `omega` or a parity lemma, and is a parity gadget, not Hodge.

## 4. Geometric host type

The map that would matter for Clay is

```
cl_X : CH^k(X)_ℚ → H^{2k}(X,ℚ)
```

on a named smooth complex projective fourfold, with `γ` in `H^{2k} ∩ H^{k,k}`.

`Hodge/GeometricHost.lean` records those names as `SmoothComplexProj` and `CycleClassData`. Mathlib 4.22 does not implement Chow groups or Hodge decomposition over `ℂ`. Declaring the type does not inhabit it, and does not close Clay Hodge.

Named fourfolds recorded as *labels*: `ℙ^4`, Klein `Q^4`, `ℙ² × ℙ²`. In the sister encoding they satisfy `HodgeConjecture`.

## 5. What would constitute a Clay close

All three, together:

1. a named nonsingular complex projective fourfold `X` (equations or equivalent);
2. a named class `γ ∈ H^{2k}(X,ℚ) ∩ H^{k,k}(X)`;
3. a proof that the *geometric* `cl_X` misses `γ`.

None of the three is supplied. `ClayDisproof` in `GeometricHost.lean` is an uninhabited Σ-type.

## 6. Evidence ledger

Exists:

- the type `isHodgeDisproof` / `HodgeDisproof`;
- gadget inhabitant `zeroCycle` (`cl = 0`, `γ = 1`);
- integral Hodge is independently false (Atiyah–Hirzebruch, Kollár);
- compact Kähler non-projective Hodge is independently false (Voisin 2002).

Does not exist:

- a geometric inhabitant of `isGeometricDisproof`;
- Mathlib congruence of `cl` with `CH^k(X)_ℚ → H^{2k}(X,ℚ)`.

Firewall: missing instance ≠ Hodge is false; `zeroCycle` ≠ a fourfold; mentioning `cl_X` ≠ a close.

Clay status: **open**.
