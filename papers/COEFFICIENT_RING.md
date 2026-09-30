# The coefficient ring of the Clay Hodge sentence

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 29 September 2026
**License:** Apache-2.0
**Repository:** https://github.com/BenFrohman/HODGE-DISPROOF
**Clay tag:** `clay-statement-open`

## Statement

The Clay Millennium problem is the rational Hodge conjecture:

> For every nonsingular complex projective variety `X` and every integer `k ≥ 0`,
> every class in `H^{2k}(X, Q) ∩ H^{k,k}(X)` is a `Q`-linear combination of classes of algebraic cycles.

The coefficient ring is `Q`. This is not a computation. It is the official sentence.

The integral Hodge conjecture replaces `Q` by `Z`. That sentence is already false in general. It is not Clay.

## Ledger letter `Z`

On the special sextic `X = V(F) ⊂ P^5`,

```
F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6,
```

the rational remainder is

```
Z = dim_Q( Hdg^{2}(X) / (im(cl_X) ∩ Hdg^{2}(X)) ).
```

Proved on this host: a rank-3 algebraic span from

```
Gram(h^{2}, [Π], [Π_{-1}]) = [[6,1,1],[1,21,0],[1,0,21]], det = 2604.
```

So `ρ ≥ 3` and `dim im(cl) ≥ 3`. The difference `Z` is uncomputed.

## Status

```
theorem no_ClayDisproofTerm_supplied : True := trivial
```

Clay remains open.
