# Lefschetz iteration types

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0
**Clay status:** open

Two compiler issues, neither of them a Hodge miss:

1. `L^r : H^m → H^{m+2r}` changes the target type at each step.
   The identity `m + 2*r + 2 = m + 2*(r+1)` is proved by `omega`
   in `Hodge/LefschetzIteration.lean`.
2. Mathlib finitary `DirectSum` wants a bounded index.
   Use `Fin (m / 2 + 1)` so `m - 2r` is nonnegative.

`ComplexCohomology` in this repository is still an axiom `Type`, not a
`Module ℂ` with a constructed `LinearMap`. The `LinearMap.comp` sketch
in the query is the right *pattern* once those instances exist. It is
not a construction over ℂ today.

`zeroCycle` still compiles as a `Datum`. These index lemmas do not
prove a primitive `(2,2)` class lies outside `im(cl_X)`.
