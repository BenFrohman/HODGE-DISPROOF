# Scheme-shaped specification

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

`Hodge/SchemeSpec.lean` names a host as a scheme of dimension 4, projective
and smooth over `ℂ`. That type would reject `Rat` as `X`.

It does not construct such a scheme. It does not construct Betti cohomology,
`H^{2,2}`, primitive `P^4`, Chow, or `cl_X`.

Do **not** add

```
axiom ConcreteClayFourfold
axiom γ_clay
axiom false_of_geometric_miss_on_host
theorem rational_hodge_conjecture_is_false := ⟨...⟩
```

That theorem is inhabited by axioms, not by geometry. An axiom that every
cycle class misses `γ` is an encoded `False`.

Mathlib 4.22 has schemes. It does not have this Hodge package. Import paths
in the draft are not a compile guarantee.

No such fourfold and class are known. The rational Hodge conjecture remains
open.
