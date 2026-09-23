# Analytic interface

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0

File: `Hodge/AnalyticInterface.lean`.

Axioms name Stokes, sheaf cohomology, Riemann bilinear relations, the
Hodge filtration `F^p H^m`, and the Griffiths torus

```
J^k(X) = H^{2k-1}(X,C) / (F^k H^{2k-1} + H^{2k-1}(X,Z))
```

Abel–Jacobi

```
Φ_k : Z^k(X)_hom → J^k(X),    Φ_k(z) = (ω ↦ ∫_Γ ω)  mod lattice
```

is defined on cycles with `cl(z) = 0`. Countability of Hilbert/Chow
components implies that the *algebraic* part of `J^k` is a countable
union of subtori. That is a statement about the Griffiths group, not
about whether a class in `H^{2k} ∩ H^{k,k}` lies in `im(cl_X)`.

The Hodge conjecture lives on even cohomology. Intermediate Jacobians
live on odd cohomology. They are adjacent machines, not the same map.

`rfl` cannot close these axioms. Neither can they close Clay Hodge.
Status: **open**.
