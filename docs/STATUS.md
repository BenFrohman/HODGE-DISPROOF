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

## Container dimensions on the frozen sextic `V(F)`

Griffiths / Jacobian ring of the chain sextic, Hilbert series
`(1+t+t^2+t^3+t^4)^6`:

```
dim_C R_6  = 426  = dim H^{3,1}_prim
dim_C R_12 = 1751 = dim H^{2,2}_prim
dim_C R_18 = 426  = dim H^{1,3}_prim
b_4        = 2606
```

These are complex vector-space dimensions. They are not `Z`.
They are not `dim_Q Hdg^2`. They do not prove Hodge and they do not
refute Hodge.

Visible algebraic floor, 3×3 Gram det 2604:

```
ρ ≥ 3,   dim_Q im(cl) ≥ 3,   Z uncomputed.
```

Illegal subtractions:

```
1751 - 3 = 1748   not Z
1751 - 8 = 1743   not Z
2606 periods ⇒ Z = 0   not computed, not accepted
```

Eight sign-planes `Π_abc` with `a,b,c ∈ {0,-1}` lie on `V(F)` by the
pair splitting of `F`. Membership is not an 8×8 Gram and is not
`ρ ≥ 8`. `{x0=x1=x2=0}` does **not** lie on `V(F)`.

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

Clay does not accept that list. The kernel check is relative to the axioms
you added.

## What would empty that list

| Slot | Construction |
|---|---|
| `X_bad` | a scheme from a coordinate ring, proved smooth projective over `ℂ` |
| `γ_bad` | a class in `H^{2k}(X,Q) ∩ H^{k,k}(X)` |
| `?miss` | a proof that no finite `ℚ`-span of cycles equals that class |

No `sorry`. No miss axiom. `#print axioms` should then show only the
foundational axioms of Lean / Mathlib, not a user-declared counterexample.

## Present field

Those three constructions do not exist in this repository or in the
accepted literature for the *rational* projective Hodge conjecture.
Integral and non-projective Kähler counterexamples are different theorems.

The requested host `G = ∑ x_i^5 - 5 ∏ x_i` is not homogeneous and is
not registered. `T_F` is `CycleSection.construct`, not a host name.
`X_5` is an AMV island.

Clay status: **open**.
