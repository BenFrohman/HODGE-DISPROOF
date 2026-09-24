# Lin–Zhang host polynomial

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open in general

Parameters: `m ≥ 2`, `d ≥ 7`, variables `2m+2` paired as `(u_s, v_s)`.

```
f_b = ∑_{s=0}^m F_s(u_s, v_s)
```

Each `F_s` is a very general squarefree binary form of degree `d`.
`X_b = {f_b = 0} ⊂ P^{2m+1}`.

The Jacobian ring of `f_b` (polynomials modulo partial derivatives) is the
algebraic model of the identity sector in the paper. It is not
`H^4(X,Q) ∩ H^{2,2}` constructed in Lean.

If Corollary 1.2 stands, `try_to_construct_miss` on this family is
false: every rational Hodge class is algebraic. Do not inhabit a miss
here. Territory outside the family remains the uninhabited fourfold
`Σ`-type.

`Hodge/PrimitiveDecomposition.lean` is Lefschetz identities. Do not
replace it with this polynomial.
