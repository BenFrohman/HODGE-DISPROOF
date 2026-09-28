# Term B status

Author: Benjamin Stanley Frohman (@BenFrohman)
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.

The type of a rational Hodge counterexample is the Σ-triple

    (D_bad, γ_bad, ∀z (cl(z)=γ_bad ⇒ False))

or, on a geometric fourfold,

    ⟨ X, γ, λ Z_s a. γ ≠ ∑_{z ∈ Z_s} a_z cl_X(z) ⟩

Lean: `Hodge.Geometric.ClayDisproofTerm` in `Hodge/ClaySpec.lean`.
That structure is a type. It has no constructor term.

## Fields

| field | required data | status |
|---|---|---|
| 1. X | named smooth projective fourfold | written: X=V(F)⊂ℝP^5 |
| 2. γ | named class in H^4(X,ℚ)∩H^{2,2}(X) intended as a miss | not written as a miss |
| 3. miss lemma | ∀ finite surfaces and rationals, γ is not that combination | hole |

Named classes on this host that are written:

    [Π],    [S] = h² − [Π]

both lie in im(cl_X). They cannot occupy field 2 of a disproof.

## What does not inhabit the type

- `zeroCycle` with cl=0, γ=1 — gadget, not a fourfold
- ⟨V(F), [Π], …⟩ or ⟨V(F), [S], …⟩ — algebraic classes
- F^T, W, μ(W)=25, μ(W^T)=26, |Aut|=30 — singularity data, not H^4∩H^{2,2}
- an axiom `false_of_geometric_miss` — a named hole
- a declaration that the term “now exists” — permission is not a proof

## Clay tag

`clay-statement-open`.

The rational Hodge conjecture remains open. Term A and Term B contradict each other. Inhabiting either is the problem. This repository records the type of Term B. It does not supply the term.
