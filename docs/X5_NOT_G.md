# X_5 is not the inhomogeneous G

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay tag:** `clay-statement-open`

## Rejected equation

```
G = x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5 - 5 x0 x1 x2 x3 x4 x5
```

This is not a section of `O(5)` on `P^5`. The monomials `x_i^5` have
degree 5; the product of six coordinates has degree 6. Euler:

```
∑ x_i ∂_i G - 5 G = -5 ∏ x_i ≠ 0.
```

The classical Dwork pencil is the *threefold* in `P^4`:

```
∑_{i=0}^4 z_i^5 - 5 ψ ∏_{i=0}^4 z_i = 0.
```

Five factors, degree 5, dimension 3. Lefschetz (1,1). Not Clay.

## Legal Field-1 stand-in

```
X_5 : x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5 = 0 subset P^5.
```

Label: `Hodge/X5.lean`. Partials `5 x_i^4`. Isolated at the origin
when `5 ≠ 0`.

Hodge numbers of any smooth quintic fourfold in `P^5`:

```
h^{4,0}=0, h^{3,1}=120, h^{2,2}=581, h^{1,3}=120, h^{0,4}=0, b_4=821.
```

`H^{3,1}=0` is false. That claim confuses `H^{4,0} ≅ R_{d-6}` with
`H^{3,1} ≅ R_{2d-6}`.

## AMV island

Aljovin–Movasati–Villaflor: integral Hodge holds on the Fermat
quartic and Fermat quintic fourfolds. Instantiating `X_5` does not
create a miss slot.

`T_F` remains `CycleSection.construct`. Ledger `Z` on `V(F)` stays
uncomputed. Clay open.
