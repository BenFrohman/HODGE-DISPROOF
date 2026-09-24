# Integrated spec is not an airtight disproof

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Date: 23 September 2026.

File: `Hodge/IntegratedSpec.lean`.

The big structure pack names a manifold, filtrations, Lefschetz data, and
Chow. `ClayHodgeConjectureDisproof` is an uninhabited `∃`.

## What is not true of the draft

* Zero holes: structures without instances are holes.
* Compilable against Mathlib 4.22: `Mathlib.Geometry.Manifold.Complex`,
  `ModelWithCorners.extI`, `HasExtChartedSpace`, `IsLinearEquivalence`
  are not those names.
* Hard Lefschetz blocks `zeroCycle`: `zeroCycle` is a `Datum`, not an
  instance of these structures. Dummy spaces can still carry dummy isos.
* No synthetic axioms: structure fields are still obligations.
* Airtight Clay close: `γ` is not required to lie in `H^4(X, Q)`, and `M`
  is not required to be projective. Compact Kähler Hodge already fails
  (Voisin 2002).

`cl_in_F` and `cl_in_Fbar` are the easy arrow. Hodge is the converse.

Clay status: **open**.
