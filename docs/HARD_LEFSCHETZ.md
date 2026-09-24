# Hard Lefschetz and primitive decomposition

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

On a compact Kaehler `n`-fold, the Kaehler class `ω ∈ H^{1,1}` induces

```
L : H^m(X,C) → H^{m+2}(X,C),     L(α) = ω ∧ α.
```

Hard Lefschetz: if `m ≤ n` then `L^{n-m} : H^m ≃ H^{2n-m}`.
Compatibility: `L(F^p H^m) ⊆ F^{p+1} H^{m+2}`.
Primitive cohomology: `P^m = ker(L^{n-m+1})`.
Lefschetz decomposition: `H^m ≃ ⊕_r L^r P^{m-2r}`.

Consequences that are already theorems:

- Hodge in dimension `≤ 3` (Lefschetz (1,1) plus duality via Hard Lefschetz).
- On many hypersurfaces, Hodge reduces to *primitive* classes of middle degree.

What this does not do:

- It does not exhibit `γ ∈ Hdg \ im(cl)` on a fourfold.
- It does not make `zeroCycle` fail to compile in `Hodge/Disproof.lean`.
- `L^{n-m}` being an isomorphism is compatible with Hodge *holding*.

The Clay problem begins after these maps are in place: a primitive Hodge
class of type `(k,k)` on a projective fourfold, missed by `cl_X`.
