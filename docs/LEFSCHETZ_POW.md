# Lefschetz iteration and Fin-bounded sums

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Date:** 23 September 2026

Two elaboration pitfalls, if these maps are ever constructed in Mathlib:

## 1. `L^r` has a dependent target

`L^r : H^m → H^{m+2r}` cannot be a homogeneous `pow` on a fixed type.
The successor step needs the index identity

```
m + 2 * r + 2 = m + 2 * (r + 1)
```

and a transport (`▸` / `Eq.rec`) of the composed map.
`r = 0` is `LinearMap.id` after `m + 2*0 = m`.

## 2. Direct sum needs a finite index

`⊕_{r ≥ 0} L^r P^{m-2r}` is written as a finitary sum over
`Fin (m / 2 + 1)`, because `m - 2r` must stay a natural number.

These are type-index facts. They do not construct `L` over `ℂ`.
They do not stop `zeroCycle` from inhabiting `Datum`.
They do not inhabit `ClayFourfoldNegation`.

See `Hodge/PrimitiveDecomposition.lean` (`primitiveIterationDepth`).
Clay status: **open**.
