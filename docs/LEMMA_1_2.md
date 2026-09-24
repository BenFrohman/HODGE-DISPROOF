# Lemma 1 and Lemma 2, locked for D

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

Fix a smooth polarized complex projective fourfold `D = (X, ω)`.

## Dictionary

| Symbol | Reading |
|---|---|
| `L(D)` | Hodge holds on `D`: every primitive rational `(2,2)`-class is algebraic |
| `Δ_Hdg(D)` | `P^4(X,Q) ∩ H^{2,2}(X)` |
| `Δ_miss(D)` | `Δ_Hdg(D) \\ im(cl_X)` |
| `Δ_Hdg = ∅` | no extra primitive Hodge classes |

`ω^2` is not in `P^4`.

## Lemma 1 (locked)

```
L(D)  ⇔  Δ_miss(D) = ∅
```

This is the definition. It is not a disproof. A disproof is one `D` with
`Δ_miss(D) ≠ ∅`.

## Lemma 2 (locked)

```
Δ_Hdg(D) = ∅  ⇒  Δ_miss(D) = ∅  ⇒  L(D)
```

If there are no extra primitive Hodge classes, there is nothing to miss,
and Hodge holds by Lefschetz `(1,1)` plus the decomposition of `H^4`.

## Not locked (false)

```
L(D)  ⇒  Δ_Hdg(D) = ∅
```

Cubics, Fermat, Lin-Zhang split family: `L` with `Δ_Hdg ≠ ∅`.

## Chain that holds

```
Δ_Hdg = ∅  ⇒  Δ_miss = ∅  ⇔  L
```
