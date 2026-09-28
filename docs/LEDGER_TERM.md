# Ledger: the CE term slot

**Author:** Benjamin Stanley Frohman
**Copyright:** (c) 2026 Benjamin Stanley Frohman
**License:** Apache-2.0
**Status:** the term *type* is on the ledger. The term *inhabitant* is not.
Clay tag: `clay-statement-open`.

This pass adds the term to the ledger as a named empty slot.
It does not fill field 3. It does not apply `to_neg`.

---

## The term

```
term_CE  :  CE
term_CE  :=  < X, gamma, miss_gamma >
```

where

```
CE  :=  exists D, exists gamma in Hdg^2(D),
          (forall z, cl_D(z) = gamma -> False)

miss_gamma  :  forall z in CH^2(X)_Q,  cl_X(z) = gamma -> False
```

| field | content | status |
|---|---|---|
| 1. X | V(F) subset P^5, F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6 | written |
| 2. gamma | a class in P^4 cap H^{2,2} outside Q<h^2, [Pi]> | not written |
| 3. miss_gamma | global reason every rational surface class misses gamma | not written |
| inhabitant | term_CE | **not written** |

`to_neg : CE -> not HC` is written (see docs/TO_NEG.md). It does not fire.

---

## What is algebraic on this host

```
Pi = V(x3, x4, x5) subset X,
[S] = h^2 - [Pi],
cl_X(Pi) = [Pi],
cl_X(S)  = [S].
```

Both lie in H^4(X, Q) cap H^{2,2}(X) and in im(cl_X).
Therefore miss_[Pi] and miss_[S] are false.
< V(F), [Pi], _ > and < V(F), [S], _ > are not term_CE.

---

## Corrected Gram matrix of Lambda_0

Normal bundle of a plane Pi = P^2 in a degree-d hypersurface in P^5:

```
0 -> N_{Pi/X} -> O(1)^3 -> O(d)|_Pi -> 0
```

gives c_2(N_{Pi/X}) = d^2 - 3d + 3. For d = 6,

```
<[Pi], [Pi]> = 21.
```

(The value 1 is wrong. It is the degree <h^2, [Pi]>, not the self-intersection.
The cubic check: d = 3 gives 3, the standard plane self-intersection on a cubic fourfold.)

Also <h^2, h^2> = deg(X) = 6 and <h^2, [Pi]> = 1.
With [S] = h^2 - [Pi]:

```
<h^2, [S]>   = 6 - 1        = 5
<[Pi], [S]>  = 1 - 21       = -20
<[S], [S]>   = 6 - 2 + 21   = 25
```

Gram matrix on the ordered basis (h^2, [Pi]):

```
|  6   1 |
|  1  21 |     det = 126 - 1 = 125 = 5^3.
```

```
Lambda_0 = Q<h^2, [Pi]> = Q<h^2, [S]>.
```

Both generators are algebraic. Shape 1 (a pairing algebraic classes cannot match)
is empty on Lambda_0: the classes in the span are algebraic.

---

## Three shapes, tested on V(F)

1. **Pairing that survives tensor Q.** Kollar-type degree obstructions die after tensor Q. A rational miss needs a lattice Lambda containing every cycle class and not containing gamma. On Lambda_0 no such constraint exists. Not written for a larger lattice.

2. **Period / Abel-Jacobi.** AJ obstructs homologically trivial cycles. A class already in H^{2,2} has vanishing AJ for trivial reasons. A Griffiths infinitesimal invariant of a normal function does not by itself prove the special fibre misses CH^2. On [Pi] the surface is present, so the invariant vanishes.

3. **Monodromy upper bound.** A very general sextic has invariant primitive lattice 0, so there is nothing to miss. On V(F) the invariant lattice jumps by at least [Pi]. A miss needs both a class outside Lambda_0 and a proof that im(cl) cannot exceed a lattice that excludes that class. Noether-Lefschetz supplies a lower bound (surfaces), not an upper bound.

---

## Inputs still empty

**Input A** (field 2, not a miss):

```
gamma in H^4(V(F), Q) cap H^{2,2}(V(F)) \ Lambda_0.
```

Not named. No period computation orthogonal to Lambda_0 has been done.
If rho_Hdg(V(F)) = 2, then Hdg^2 = Lambda_0, every rational Hodge class
on this host is algebraic, and V(F) cannot carry a miss.

**Input B** (field 3):

```
im(cl)subseteq Lambda    and    gamma notin Lambda tensor Q.
```

Not written. The Gram matrix of Lambda_0 is a lower bound only.

Neither input is obtained by renaming miss, by deleting field 3,
or by grinding False.

---

## Status line

```
term_CE : CE     -- type on the ledger
term_CE          -- inhabitant: none
theorem no_ClayDisproofTerm_supplied : True := trivial
```
