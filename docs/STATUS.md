# Status: blueprint, not a Clay close

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

## What this repository is

A Lean 4 map of the type of a Hodge counterexample term:

```
¬ ∀ X γ, ∃ z, cl_X z = γ
```

is a Σ-triple `⟨X_bad, γ_bad, fun z h => ?miss⟩` with `γ` Hodge.

That type is recorded. The three slots are empty.

## Container dimensions on the frozen sextic V(F)

Hilbert series of the Jacobian ring for a smooth sextic in P^5:

```
(1 + t + t^2 + t^3 + t^4)^6
```

gives

```
dim_C R_6  = 426  = h^{3,1}
dim_C R_12 = 1751 = h^{2,2}_prim
dim_C R_18 = 426  = h^{1,3}
dim_C R_24 = 1    = h^{0,4}
b_4        = 2606
```

These are complex vector-space dimensions. They are not a period matrix.
They do not assign ledger `Z`. They do not prove `Z = 0`.

Illegal subtractions (refused):

```
1751 - 3     # C-dimension minus rational rank
1751 - 8     # 8 planes are not proved on V(F)
2606 periods # no period list exists in this repo
```

Proved algebraic span on V(F): two planes `Π`, `Π_{-1}` plus `h^2`.
Gram 3×3, det 2604. `ρ ≥ 3`. `{x0=x1=x2=0}` does not lie on V(F).
Among the eight sign patterns `x0=ε0 x3`, `x1=ε1 x4`, `x2=ε2 x5` with
`ε_i = ±1`, only `(-1,-1,-1)` makes F vanish identically.

## What an axiom does

```
axiom X_bad : Variety
axiom γ_bad : HodgeClass X_bad
axiom miss_proof : ∀ z, cl X_bad z = γ_bad → False
theorem rational_hodge_conjecture_is_false := ⟨X_bad, γ_bad, miss_proof⟩
```

`#print axioms rational_hodge_conjecture_is_false` would list
`X_bad`, `γ_bad`, `miss_proof`. That is:

> if a counterexample exists, then a counterexample exists.

Clay does not accept that list.

## Present field

`ClayDisproofTerm` uninhabited. Ledger `Z` uncomputed.
`HodgeConjecture.general_fourfold` stays a Prop.
The non-homogeneous `G = ∑ x_i^5 - 5 ∏ x_i` is not a P^5 host.

Clay status: **open**.
