# Fermat quintic fourfold label X_5

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay tag:** `clay-statement-open`
**Sister algebra:** `BenFrohman/HODGE` `Hodge/FermatQuintic.lean`

`X5` is a `SmoothComplexProj` label for

```text
X_5 = V(x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5) ⊂ P^5.
```

It is not `T_F`. It is not `∑ x_i^5 - 5 ∏_{i=0}^5 x_i`.
That product is degree 6 and does not cut a projective hypersurface.

Hodge numbers of a smooth quintic fourfold: `h^{3,1}=120`, not 0.
AMV: integral Hodge holds on this named Fermat host. Island, not a miss.
Ledger `Z` on the chain sextic `V(F)` stays uncomputed.
`no_ClayDisproofTerm_supplied : True := trivial`.
