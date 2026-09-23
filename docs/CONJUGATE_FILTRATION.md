# Conjugate filtration and the easy arrow

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

Complex conjugation on `H^m(X, C)` is R-linear. The conjugate filtration step
is the image of `F^q` under that map. On a compact Kaehler manifold,

```
F^p ∩ Fbar^q = 0     whenever p + q = m + 1
H^{p,q} = F^p ∩ Fbar^q   when p + q = m
```

Algebraic cycle classes are defined over Q and are conjugation-invariant, so

```
cl_X(z) ∈ F^k H^{2k}(X,C) ∩ Fbar^k H^{2k}(X,C)
```

That is the *easy* direction: every algebraic class is a Hodge class.

The Hodge conjecture is the converse:

```
γ ∈ H^{2k}(X,Q) ∩ F^k ∩ Fbar^k   ⇒   γ ∈ im(cl_X)
```

Axiomatizing the easy arrow does not inhabit a miss lemma. Mock modules are
not excluded by these axioms alone; they are excluded by `ClayStructure` /
`ComplexProjectiveVariety`. Filtration axioms do not make `zeroCycle` fail
to compile in `Hodge/Disproof.lean`.
