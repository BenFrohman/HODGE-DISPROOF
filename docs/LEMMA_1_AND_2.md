# Lemma 1 and Lemma 2, given D

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Date:** 24 September 2026

Fix a smooth complex projective fourfold `D` with Kähler class `ω`.

Two different sets:

```
Δ_Hdg  := extra primitive (2,2) classes
         = (P^4(D,Q) ∩ H^{2,2}(D))  /  Q⟨ω²⟩

Δ_miss := those extra classes not in im(cl_D)
```

## Lemma 1 (definitional)

Hodge holds on `D` if and only if `Δ_miss = ∅`.

## Lemma 2 (easy vanishing)

If `Δ_Hdg = ∅`, then the only primitive Hodge class is a multiple of `ω²`,
which is algebraic, so Hodge holds on `D`.

## What is not equivalent

```
HodgeOn(D)  ⇔  Δ_Hdg = ∅     is false.
```

Cubic fourfolds (and many NL hosts) have extra *algebraic* (2,2) classes.
Then `Δ_Hdg ≠ ∅` and Hodge still holds.

The chain `L ⇔ Δ=∅ ⇔ Lemma1 ∧ Lemma2` is therefore only valid when `Δ`
means `Δ_miss`, not `Δ_Hdg`.

A Clay miss is a point of `Δ_miss` on some projective fourfold. None is supplied.
Clay status: **open**.
