# Fields 1, 2, 3 of Term B

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
This file is a grind of the *candidates*. It is not a term of Term B.

Term B:

    ∃ X ∃ γ ∈ Hdg²(X),   γ ∉ im(cl_X)

with Hdg²(X) := H^4(X, Q) ∩ H^{2,2}(X) and cl : CH²_Q → H^4.

## Chart

| Field | Required | On V(F) | Verdict |
|---|---|---|---|
| 1 | named smooth projective fourfold | X = V(F) ⊂ P^5 | written |
| 2 | named γ in H^4 ∩ H^{2,2} | h², [Π], [S]=h²-[Π] | written, *algebraic* |
| 3 | proof γ is not a Q-span of surfaces | those three *are* surface classes | fail |

A class that hits im(cl) cannot be Field 2+3 at once.
No other named γ on this host is written.

## Why the grind stops here

h^{2,2}=1752 is the *complex* dimension of (2,2)-forms on a very general
sextic. Rational Hodge classes are a Q-subspace of that. On a very general
host NL says the subspace is Q h² (vacuous Hodge). On the *special* host
V(F) the written rational span is rank 2 and algebraic.

Chiodo–Ruan matches state-space *dimensions* under LG/CY. It does not
name a class outside im(cl).

Lefschetz (1,1) is H^2 ∩ H^{1,1}. Wrong degree for Field 3.
Voisin non-projective and Atiyah–Hirzebruch / Kollár integral are other
statements.

## Finding → repo

| Finding | Repo |
|---|---|
| Official sentence on H^4 ∩ H^{2,2} | HODGE/docs/H_NOT_P.md, HDG2_NOT_H2.md |
| Sextic numbers (1,426,1752,426,1) | HODGE/docs/HODGE_NUMBERS.md |
| X=V(F), [Π], [S] algebraic | HODGE + DerivedCategories |
| Vacuous Hodge = NL, not V(F) | NoetherLefschetz |
| F/F^T, BHK, A/B oath | DerivedCategories |
| Atom u^5 v + v^6, μ=30 | ChainAtom-u5v-v6 |
| Σ-type, no inhabitant | this repo |
| Cubics algebraic | CubicFourfold |
| Ω_0 type (1,6) | OmegaZero34 — not Hodge |
