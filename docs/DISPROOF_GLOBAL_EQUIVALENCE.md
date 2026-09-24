# Disproof of the global equivalence template

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status for Hodge:** open

## What is disproved

The unconditional chain

```
L  ⇔  Δ_Hdg = ∅  ⇔  (Lemma 1 ∧ Lemma 2)
```

is not a theorem. The failing arrow is

```
L(D)  ⇒  Δ_Hdg(D) = ∅.
```

Very general high-degree fourfolds have `Δ_Hdg = ∅` and then `L` holds
trivially (Noether-Lefschetz vanishing). Cubics, Fermat, and the Lin-Zhang
split family have `L` with `Δ_Hdg ≠ ∅`. So `L` is not equivalent to
vanishing of extra classes.

## What is not disproved

The Hodge conjecture. A false identification of `L` with `Δ_Hdg = ∅` is
not `Δ_miss ≠ ∅`.

## Locked lemmas (unchanged)

```
Lemma 1:  L(D)  ⇔  Δ_miss(D) = ∅     (definition)
Lemma 2:  Δ_Hdg(D) = ∅  ⇒  L(D)     (easy Hodge)
```

No second repository is required. This file is the isolation of the
template from the Clay sentence.
