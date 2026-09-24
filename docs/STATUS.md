# Status

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Date:** 24 September 2026
**Clay status:** **open**

## Blueprint vs construction

The repository records the type of a counterexample term:

```
¬ ∀ X γ, ∃ z, cl_X z = γ
```

is a Σ-triple `⟨X_bad, γ_bad, fun z h => ?miss⟩`.

That is a blueprint. It is not a Clay disproof.

## What `#print axioms` would show

If `rational_hodge_conjecture_is_false` were closed by

```
axiom ConcreteClayFourfold
axiom γ_clay
axiom false_of_geometric_miss_on_host
```

then `#print axioms rational_hodge_conjecture_is_false` would list those
names. That list is a disqualification, not a prize file.

Infrastructure names (Betti, `cl_X` as an interface) may appear while
the geometry is missing from Mathlib. A miss axiom may not.

## What would count

1. A scheme `X` constructed from a coordinate ring, proved smooth projective of dimension 4 over `ℂ`.
2. A class `γ` proved to lie in `P^4(X,ℚ) ∩ H^{2,2}(X)`.
3. A proof that no finite `ℚ`-combination of surfaces maps to `γ`.

None of those three is in this repository. `#print axioms` on any gadget
(`zeroCycle`, `2n=5`) is irrelevant to Clay.

See `docs/FIVE_EMPTY_TERMS.md`, `docs/DISPROOF_CRITERION.md`.
