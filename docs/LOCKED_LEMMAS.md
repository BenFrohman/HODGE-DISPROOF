# Locked lemmas for a polarized fourfold D

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Date:** 24 September 2026

Fix D = (X, ω) a smooth complex projective fourfold.

| Symbol | Meaning |
|---|---|
| L(D) | Hodge holds on D: every primitive rational (2,2)-class is algebraic |
| Δ_Hdg(D) | extra primitive Hodge classes: P^4(X,Q) ∩ H^{2,2}(X) |
| Δ_miss(D) | Δ_Hdg(D) \\ im(cl_X) |

## Lemma 1 (locked)

```
L(D)  ⇔  Δ_miss(D) = ∅
```

Definition of Hodge on D. Not a disproof.

## Lemma 2 (locked)

```
Δ_Hdg(D) = ∅  ⇒  L(D)
```

If there are no extra primitive Hodge classes, only Lefschetz classes remain,
and those are algebraic.

## Locked chain

```
Δ_Hdg = ∅  ⇒  Δ_miss = ∅  ⇔  L
```

## Not locked (false)

```
L(D)  ⇒  Δ_Hdg(D) = ∅
```

## Not a disproof

Lemma 1 is an equivalence. A disproof is a host with `Δ_miss ≠ ∅`.
That host is not supplied.

Clay status: **open**.
