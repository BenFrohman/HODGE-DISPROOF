# Clay blueprint (axiomatic, uninhabited)

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0
**Clay status:** open

The geometric objects may be named by axioms so that `zeroCycle` cannot
unify with the first field of the Σ-sentence. That is the blueprint.

```
ClayDisproofStatement :=
  ∃ X, ∃ hX : IsSmooth X, ∃ k, ∃ γ : H^{2k}(X,Q),
    IsHodgeClass γ ∧ ∀ z, geometric_cl X k z = γ → False
```

## What was rejected

A global axiom

```
axiom false_of_geometric_miss
  {X} {k} {γ} {z} (h : geometric_cl X k z = γ) : False
```

would prove every class is non-algebraic, contradict the easy direction
(`geometric_cl_is_hodge`), and inhabit `ClayDisproofStatement` by fiat.
It is not a miss lemma on one host. It is not recorded.

A `theorem clay_level_disproof := ⟨X_bad, …⟩` with holes or `sorry`
is not recorded.

## What remains missing

1. a named `X : ComplexProjectiveVariety` with `IsSmooth X`;
2. a named `γ` with `IsHodgeClass γ`;
3. a *host-specific* proof `∀ z, geometric_cl X k z = γ → False`.

None exists in the literature as of 2026. File: `Hodge/ClayBlueprint.lean`.
