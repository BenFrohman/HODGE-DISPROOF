# Nontrivial V is not a firewall

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

`ProjectiveFourfoldSpace` with fields

```
h_non_trivial : Nontrivial V
h_dim_bound   : ∃ v1 v2, v1 ≠ v2 ∧ v1 ∈ Hdg ∧ v2 ∈ Hdg
```

does not exclude `zeroCycle`.

`Rat` is `Nontrivial`. Take `V = Rat`, `hodgeClasses = ⊤`, `v1 = 0`,
`v2 = 1`, `cl = 0`, `γ = 1`. Then `0 ≠ 1`, two Hodge classes exist, and
`∀ z, cl z = γ → False` is `0 = 1 → False`. That is the same gadget.

A universal axiom

```
X_clay_fourfold : ∀ Z V N, ProjectiveFourfoldSpace Z V N
```

says every module triple is a fourfold. That is the opposite of geometry.

`false_of_primitive_geometric_miss` as an axiom on those data is a global
assertion that Hodge is false on dummy modules. It is unsound.

`theorem global_case_closed` with `sorry` is not a Clay close.

Do not merge that inhabitant into `Hodge/PrimitiveDecomposition.lean`.
