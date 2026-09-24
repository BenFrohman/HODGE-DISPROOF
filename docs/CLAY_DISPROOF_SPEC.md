# Clay-level disproof specification

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0
**Status:** specification. Not inhabited. Clay Hodge remains **open**.

To close the actual Hodge conjecture, a proof term must inhabit the
geometric negation. The term is the nested Σ-tuple

```
Clay_Disproof_Term :=
  ⟨ X_smooth, γ_Hdg, λ z h_cl. false_of_geometric_miss h_cl ⟩
```

The three fields are strict.

## 1. `X_smooth`

A complex projective variety given by a system of homogeneous polynomial
equations in some `ℙ^n`, together with a proof of non-singularity
(Jacobian criterion: the Jacobian matrix has maximal rank at every point).
A `String` name, a `Datum` with `cl = 0`, or a wrapper `Variety` around
`zeroCycle` is not this field.

## 2. `γ_Hdg`

A named class proven to lie in both

```
H^{2k}(X, ℚ)    and    H^{k,k}(X)
```

Membership in `LinearMap.ker (0 : ℚ →ₗ[ℚ] ℚ)` is not this field.

## 3. `false_of_geometric_miss`

A closed lemma: for any algebraic cycle `z`, the assumption
`cl_X z = γ_Hdg` yields `False`, where `cl_X` is the geometric map

```
cl_X : CH^k(X)_ℚ → H^{2k}(X, ℚ)
```

This lemma cannot evaluate by δ-reduction to a numeral (`0 = 1`, `2n = 5`).
`rfl` and `decide` do not fire. Noether–Lefschetz does not produce it.

## Relation to the local encoding

`isHodgeDisproof` / `HodgeDisproof` on `Datum` is the *shape* of the pack.
`zeroCycleDisproof` inhabits that shape with `cl = 0` and `γ = 1`.
`Clay_Disproof_Term` is the same shape with the geometric constraints
above. No inhabitant is supplied.

See `Hodge/GeometricHost.lean` (`ClayDisproof`, uninhabited) and
`papers/PREPRINT.md`.
