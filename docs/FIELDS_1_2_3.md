# Fields 1, 2, 3 of Term B

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
This file is a grind of the *candidates*. It is not a term of Term B.

Term B is the triple \(\langle X,\;\gamma_{\mathrm{bad}},\;p\rangle\):

    ∃ X ∃ γ ∈ Hdg²(X),   γ ∉ im(cl_X)

with Hdg²(X) := H^4(X, Q) ∩ H^{2,2}(X) and cl : CH²_Q → H^4.

Ambient of a sextic fourfold is \(\mathbb{P}^5\), never \(\mathbb{R}^5\).

## Chart

| Field | Call it | Lean slot | On V(F) | Verdict |
|---|---|---|---|---|
| 1 | the host | `D` | \(X = V(F) \subset \mathbb{P}^5\) | shape written |
| 2 | the class \(\gamma_{\mathrm{bad}}\) | `γ` | h², [Π], [S]=h²-[Π] | written, *algebraic* |
| 3 | the miss witness \(p\) | `p : ∀ z, cl z = γ → False` | those three *are* surface classes | fail |

\(\alpha\) and \(\varphi(\beta)=\deg(\alpha\cup\beta)\) are how you *build* \(p\). The slot is \(p\).
A class that hits im(cl) cannot be Field 2+3 at once.
No other named \(\gamma\) on this host is written.

## Repo split

| Repo | Problem it owns |
|---|---|
| HODGE | named hits: CycleSection on named hosts |
| HodgeDisproof | Term B type; Fields 2–3 empty |
| HODGE-DISPROOF | same Σ-schema; Clay OPEN |
| DerivedCategories | residual surface S; not Y; not Term B |
| NoetherLefschetz | extras vanish on a very general high-degree host |
| CubicFourfold | cubics; Zucker scope; not a miss |
| TateConjecture | Tate over finite fields; not Hodge |

## Why the grind stops here

h^{2,2}=1752 is the *complex* dimension of (2,2)-forms on a very general
sextic. On the special host V(F) the written rational span is rank 2 and algebraic.
