# Screenshot ledger

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Not a Clay close. Term B uninhabited.

## Surface combination

On a fourfold X a surface combination is a finite rational linear combination
of codimension-2 subvarieties:

    z = Σ_{i=1}^m a_i Z_i,    a_i ∈ Q,    Z_i ⊂ X surface.

That is an element of Z^2(X)_Q. After rational equivalence it is a class
in CH^2(X)_Q. The cycle class map sends it to cohomology:

    cl(z) = Σ a_i [Z_i] ∈ H^4(X, Q).

Hodge at k=2 says every γ ∈ H^4 ∩ H^{2,2} equals cl(z) for some such z.
The miss witness p says the opposite for one γ: no surface combination
maps to it.

## Lean slots

| Field | Call it | Lean slot | Status on V(F) |
|---|---|---|---|
| 1 | the host | D | written: X = V(F) ⊂ P^5 |
| 2 | the class γ_bad | γ | empty |
| 3 | the miss witness p | p : ∀ z, cl z = γ → False | empty |

## Candidate grind

| candidate | Field 2? | Field 3? |
|---|---|---|
| h^2 | yes, algebraic | no — linear section |
| [Π] | yes, algebraic | no — the plane |
| [S] = h^2 − [Π] | yes, algebraic | no — residual quintic |
| F^T | not a class on X | — |
| atom u^5 v + v^6 | 2-variable germ | — |
| 1752 | dim_C H^{2,2} | not a rational class |

## Atom correction

See BenFrohman/ChainAtom-u5v-v6/docs/MU_VS_AUT.md:

    μ(W) = 25,   |Aut(W)| = 30
    μ(F) = 25^3 = 15625,   |Aut(F)| = 30^3 = 27000
