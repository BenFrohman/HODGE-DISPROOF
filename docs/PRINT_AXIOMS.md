# `#print axioms`

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0

If `rational_hodge_conjecture_is_false` is proved from

```
axiom ConcreteClayFourfold
axiom γ_clay
axiom false_of_geometric_miss_on_host
```

then

```
#print axioms rational_hodge_conjecture_is_false
```

prints those three names (plus Lean's built-ins). That output disqualifies
the file as a Clay resolution.

A genuine term would print only Lean / Mathlib foundations.
This repository contains no such term.
