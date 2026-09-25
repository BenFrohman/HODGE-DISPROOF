# Negation versus counterexample

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

Let `H` be the Π-sentence of rational Hodge on fourfolds:
`∀ D γ, ∃ z, cl z = γ` (with γ Hodge).

| Name | Type | Term shape |
| --- | --- | --- |
| HodgeNegation | H → False | a function |
| HodgeCounterexample | ∃ D γ, ∀ z, cl z = γ → False | a triple ⟨D, γ, miss⟩ |

Constructive: a triple yields a function (feed D,γ to any claimed proof of H).
Classical: a function yields a triple only with `Classical.not_forall`.
`#print axioms` on that direction lists choice.

Both types are empty in this repository and in accepted mathematics.
The triple is what Clay would need. Writing the type is not the term.
