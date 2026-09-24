# Periods, Abel-Jacobi, and Noether-Lefschetz

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0
**Clay status:** open

A genuine miss lemma for rational Hodge would show

```
im(cl_X : CH^k(X)_Q → H^{2k}(X,Q))  ⊂  Hdg^k(X)
```

on one named smooth complex projective `X`. The tools named below
do not currently supply that inclusion as a theorem on any such `X`.

## What γ is

A rational Hodge class is an element of

```
H^{2k}(X, Q) ∩ H^{k,k}(X)  ⊂  H^{2k}(X, C).
```

It is not an integer `5`. A de Rham representative is a closed complex
form of type `(k,k)` whose class is rational on a Betti lattice. Periods
of that form against a basis of `H_{2k}(X, Z)` are the coordinates of γ.
Writing those integrals is a *definition* of the class, not a miss proof.

## Abel-Jacobi is the wrong map

Griffiths Abel-Jacobi is

```
AJ : CH^k(X)_hom → J^{2k-1}(X)
```

from *homologically trivial* cycles to an intermediate Jacobian.
Its kernel/image concerns algebraic vs homological equivalence
(Griffiths group). Hodge is about whether a class in `Hdg^k` lifts
to some cycle at all. A nonzero AJ image of a homologically trivial
cycle does not produce a Hodge class outside `im(cl_X)`.

## Noether-Lefschetz is the opposite direction

Classical NL: for a very general surface of degree `≥ 4` in `P^3`,

```
Pic(S) = Z · O(1).
```

Extra `(1,1)` classes vanish. Combined with Lefschetz `(1,1)`, Hodge
*holds* on those surfaces. On a very general high-degree hypersurface,
primitive Hodge classes in the middle degree typically disappear;
the remaining Hodge classes are the ambient hyperplane powers, which
are algebraic. NL therefore shrinks `Hdg`, it does not exhibit an
element of `Hdg \ im(cl)`.

The Noether-Lefschetz *locus* is the set of special hosts that *do*
carry extra Hodge classes. Hodge asserts those extra classes are
still algebraic. Occupying that locus is not a miss lemma.

## Intersection pairing

The pairing of two algebraic classes is rational (in fact integral
up to a denominator from the cycle class). Pairing two Hodge classes
is also rational. A mock identity `2n = 5` is not a period computation.

## What is not supplied

No named fourfold, no named period matrix, and no named pairing value
in this repository (or in the accepted literature as of 2026) proves
`cl_X z ≠ γ` for a Hodge class `γ` on a smooth complex projective `X`.

Lean names for the objects, uninhabited: `Hodge/PeriodInterface.lean`.
