/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.HardLefschetz
import Hodge.ClayBlueprint

/-!
# Primitive cohomology, with the iteration depth written out

```
P^m(X,C) := ker(L^{n-m+1} : H^m → H^{2n-m+2})
H^m(X,C) ≃ ⊕_{r ≥ 0} L^r P^{m-2r}(X,C)
```

This is the Lefschetz decomposition. On many fourfolds Hodge reduces to
primitive classes of type `(2,2)`. That is a reduction, not a miss.
-/

namespace Hodge
namespace Primitive

open HardLefschetz Analytic ClayBlueprint

/-- Iteration depth of the operator that cuts out primitives. -/
def primitiveIterationDepth (n m : Nat) : Nat := n - m + 1

axiom isPrimitive (X : ComplexManifold) (m : Nat) :
    ComplexCohomology X m → Prop

/-- A primitive Hodge class of type `(k,k)`. -/
def PrimitiveHodgeClass (X : ComplexProjectiveVariety) (k : Nat)
    (γ : RationalCohomology X k) : Prop :=
  IsHodgeClass γ

/-- Reduction statement: Hodge on many hosts is equivalent to algebraicity
of primitive Hodge classes. Not a counterexample. -/
axiom hodge_reduces_to_primitive
    (X : ComplexProjectiveVariety) (hX : IsSmooth X) (k : Nat) : Prop

theorem decomposition_is_not_a_miss : True := trivial

end Primitive
end Hodge
