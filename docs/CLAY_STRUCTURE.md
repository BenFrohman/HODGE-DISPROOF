# ClayStructure typeclass

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**License:** Apache-2.0
**Clay status:** open

Abstract `Datum` parameters are constrained by a typeclass that admits only
smooth complex projective varieties with a geometric cycle-class map.

```lean
class ClayStructure (X : Variety) (k : Nat) where
  CH : Type
  H2k : Type
  OffDiag : Type
  cl : CH → H2k
  obstruction : H2k → OffDiag
  isHodge : H2k → Prop
  cl_lands_in_Hodge : ∀ z, isHodge (cl z)
```

Effects:

- `zeroCycle` (`Z = V = N = Q`, `cl = 0`) cannot form an instance.
- A Clay disproof term must be `ClayDisproofTermOn`, which demands `[ClayStructure X k]`.
- The kernel will not accept a mock module in that slot.

What this does not do:

- It does not construct `X`, `CH`, or `cl_X`.
- It does not inhabit `ClayDisproofTermOn`.
- Mathlib 4.22 still has no schemes, Chow groups, or Hodge decomposition over `C`.

The typeclass is a compile-time firewall, not a Millennium close.
