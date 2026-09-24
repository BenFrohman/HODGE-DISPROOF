# Lemma 1 and Lemma 2, given D

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

Fix a smooth polarized complex projective fourfold `D = (X, ω)`.

```
Δ(D) := P^4(X,Q) ∩ H^{2,2}(X)
```

This is the space of *primitive* rational Hodge classes of type `(2,2)`.
It does not contain `ω^2` (`ω^2` lives in `L^2 P^0`).

`Δ(D) = 0` means there are no extra primitive Hodge classes.

Let `L(D)` mean: Hodge holds on `D` in codimension 2, i.e. every class in
`H^4(X,Q) ∩ H^{2,2}(X)` is algebraic.

## Lemma 1 (`Δ = 0 ⇒ L`)

If `Δ(D) = 0`, then by the Lefschetz decomposition

```
H^4 ≃ P^4 ⊕ L P^2 ⊕ L^2 P^0
```

and Lefschetz `(1,1)`, every Hodge class of type `(2,2)` is algebraic.
So `L(D)` holds. The only classes present are Lefschetz classes.

## Lemma 2 (`L` does not imply `Δ = 0`)

`L(D)` says every class *in* `Δ(D)` is algebraic. It does not say
`Δ(D)` is zero. Cubic fourfolds and the Fermat sextic fourfold have
nontrivial algebraic primitive `(2,2)` classes, so `L` holds (or is
known in the rational case) with `Δ ≠ 0`.

The missing converse is:

```
L(D)  ∧  im(cl_X) ∩ P^4 = 0   ⇒   Δ(D) = 0
```

That is: Hodge plus “no algebraic primitives” implies no Hodge primitives.

## The chain that is true

```
Δ(D) = 0  ⇒  L(D)                 (Lemma 1)
L(D) ∧ (no algebraic primitives)  ⇒  Δ(D) = 0   (Lemma 2')
```

`L(D) ⇔ Δ(D) = 0` is false in general.

Neither lemma is a miss. Lemma 1 is why Hodge is easy on a very general
high-degree fourfold: extra classes never appear.
