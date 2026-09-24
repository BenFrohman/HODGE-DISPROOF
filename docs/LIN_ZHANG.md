# Lin–Zhang family (arXiv:2609.03784)

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Date:** 24 September 2026

Paper: Xun Lin, Shizhuo Zhang,
*A note on the noncommutative Hodge conjecture for graded matrix factorizations*,
arXiv:2609.03784v1, 3 September 2026.

## What they prove

For `m ≥ 2`, `d ≥ 7`, and `b` very general, let

```
f_b = F_0(u_0,v_0) + ⋯ + F_m(u_m,v_m)
X_b = {f_b = 0} ⊂ P^{2m+1}
```

with each `F_s` a very general squarefree binary form of degree `d`.
Then `X_b` is smooth of dimension `2m` and satisfies the *rational*
Hodge conjecture.

Middle ranks:

```
dim_Q Hdg^m_prim(X_b) = (d-1)^{m+1}
dim_Q Hdg^m(X_b)      = (d-1)^{m+1} + 1
```

The generators come from boundary–bulk images of rank-one graded matrix
factorizations and Thom–Sebastiani products, plus the hyperplane class.

Fourfold case: `m = 2`, `d ≥ 7` gives a very general split octic (or
higher) fourfold in `P^5` with `L` holding. That is Lemma 2 style:
`Δ_miss = ∅` on this family.

## What they do not prove

- Hodge for every smooth projective variety (Clay).
- A miss: `Δ_miss ≠ ∅`.
- A Lean-closed term without the paper’s arguments.

A new family on which Hodge *holds* enlarges the known-positive list.
It does not create a disproof on some leftover host.

Gadget files (`zeroCycle`, even/odd) remain labeled sentinels. They are
not counterparts of `X_b`.

Clay status: **open**.
