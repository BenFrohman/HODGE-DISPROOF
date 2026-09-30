# Letter lock: Q, Z, F, H, C

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

This note records the coefficient ring of the Clay sentence and the letters used in the ledger. It does not inhabit `ClayDisproofTerm`.

## Coefficient ring of Clay

Clay is the *rational* Hodge conjecture. The coefficient field is `Q`:

```
H^{2k}(X, Q) ∩ H^{k,k}(X) ⊆ im(cl : CH^k(X)_Q → H^{2k}(X, Q))
```

There is nothing to compute about `Q` itself. It is the field of rationals.
Replacing `Q` by `Z` yields the integral Hodge conjecture, a different sentence, already false in general (Atiyah–Hirzebruch; later torsion-free examples).

## The letter Z in this ledger

`Z` here is **not** the integers. It is the rational cokernel dimension on the named host `V(F)`:

```
Z = dim_Q ( Hdg^{2}(V(F)) / (im(cl) ∩ Hdg^{2}) )
```

That integer is uncomputed.

Do not write `ℤ` where you mean this cokernel.
Do not write `Z` where you mean the integers.

## The letter F

`F` is the host equation, not cohomology and not `CycleClassData`:

```
F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6
X = V(F) ⊂ P^5
```

Polynomials and plane membership live in the sister repo `BenFrohman/HODGE`, file `Hodge/SpecialSextic.lean`.
The string `"V(F)"` inside `SmoothComplexProj` is a label only.

## The letters H and C

- `H` is cohomology: `H^4`, `H^{2,2}`, `Hdg`.
- `C` is either `ℂ`, or the package `CycleClassData`, or a Chow group. It is not the polynomial `F`.

## Standing numbers on V(F)

```
Gram(h^{2}, [Π_000], [Π_{-1-1-1}]) = [[6,1,1],[1,21,0],[1,0,21]], det = 2604
ρ ≥ 3,   dim im(cl) ≥ 3,   Z uncomputed
```

Named classes `[Π]`, `[S]`, `β` have cycles, so they cannot carry `false_of_geometric_miss`.

## What this file is not

Not a miss term. Not `Z = 0`. Not a Clay close.
