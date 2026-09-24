# Lin-Zhang 2026: a positive family, not a miss

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open
**Source:** Xun Lin and Shizhuo Zhang,
*A note on the noncommutative Hodge conjecture for graded matrix factorizations*,
arXiv:2609.03784v1, 3 September 2026.

## What the paper claims

For `m ≥ 2`, `d ≥ 7`, and a very general parameter `b`, let

```
f_b = F_0(u_0,v_0) + ⋯ + F_m(u_m,v_m)
```

with independently very general squarefree binary forms of degree `d`.
Then `X_b = {f_b = 0} ⊂ P^{2m+1}` is a smooth hypersurface of dimension `2m`,
and the rational Hodge conjecture holds on `X_b` (Corollary 1.2).

Primitive middle Hodge rank: `(d-1)^{m+1}`.
Full middle rational Hodge rank: `(d-1)^{m+1} + 1`.

The route is the noncommutative Hodge conjecture for `MF_gr(f_b)`, then
Orlov / additivity of NCHC for the SOD relating `Perf(X_b)` to that category.

Fourfold case: `m = 2`, so `X_b ⊂ P^5`, degree `d ≥ 7`.

## What this does in the map

| Host | `Δ_Hdg` | `Δ_miss` | `L` |
|---|---|---|---|
| Very general high-degree hypersurface | often `0` | `0` | holds, trivial |
| Lin-Zhang split, very general, `m≥2`, `d≥7` | rank `(d-1)^{m+1}` | `0` (paper) | holds |
| Cubic / Fermat (known cases) | nonzero algebraic | `0` | holds |
| General fourfold | unknown | unknown | open |

This family is a host with `Δ_Hdg ≠ 0` and `Δ_miss = 0` *if the paper is accepted*.
It expands known positive territory. It does not inhabit
`rational_hodge_conjecture_is_false`.

## What this repository does not do

- It does not construct `X_b` in Mathlib.
- It does not formalize matrix factorizations or reduced Burau.
- It does not prove Corollary 1.2 in Lean.
- A `sorry` or literature axiom is not `#print axioms`-clean.

A proof of Hodge on one family and a disproof of Hodge on all varieties
cannot both be valid. The Clay sentence is still the ∀ over all `X`.
