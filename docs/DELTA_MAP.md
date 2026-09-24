# Map of L, Δ_Hdg, and Δ_miss

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 24 September 2026
**License:** Apache-2.0
**Clay status:** open

This is a dictionary, not a new theorem. Noether–Lefschetz vanishing plus
the definition of Hodge.

Fix a polarized fourfold D = (X, ω).

```
Δ_Hdg(D)  = P^4(X,Q) ∩ H^{2,2}(X)
Δ_miss(D) = Δ_Hdg(D) \ im(cl_X)
L(D)       = Hodge holds on D
           = every class in Δ_Hdg is algebraic
```

## Table

| Host | Δ_Hdg | Δ_miss | L(D) |
| --- | --- | --- | --- |
| Very general high-degree fourfold in P^5 | empty | empty | holds (vacuous primitive part) |
| Special fourfold with extra algebraic surfaces (e.g. some cubics) | nonempty, inside im(cl) | empty | holds |
| Hypothetical Clay host | nonempty | nonempty | fails |
| Known mathematics (2026) | both nonempty and empty hosts exist | empty in every accepted example | open in general |

## Arrows that hold

```
Δ_Hdg = ∅  ⇒  Δ_miss = ∅  ⇔  L(D)
```

Lemma 2 is the first arrow. Lemma 1 is the biconditional (definition).

## Arrow that fails

```
L(D)  =≫  Δ_Hdg = ∅
```

Hodge can hold with extra algebraic primitive classes.

A Clay disproof is a row with Δ_miss nonempty. That row is not known.
