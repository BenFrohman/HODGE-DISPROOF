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

Clay status: **open**.
