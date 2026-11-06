/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

/-!
# Linear fourfold filter (insufficient)

`Nontrivial V` and two distinct Hodge classes do **not** kill `zeroCycle`.
`Rat` is nontrivial. `0` and `1` can both lie in `ker 0`.

No `X_clay_fourfold : ∀ Z V N, ProjectiveFourfoldSpace`.
No `false_of_primitive_geometric_miss` axiom.
No `global_case_closed`.
-/

set_option autoImplicit false

namespace Hodge
namespace FourfoldFilter

structure ProjectiveFourfoldSpace (Z V N : Type) where
  cl : Z → V
  isHodge : V → Prop
  two_classes : Prop   -- intended: ∃ v1 v2, v1 ≠ v2 in Hodge classes
  nontrivial_V : Prop

/-- Primitivity is a supplied predicate; no geometric Lefschetz interpretation is assumed. -/
def IsPrimitiveHodgeClass {Z V N : Type}
    (D : ProjectiveFourfoldSpace Z V N) (isPrimitive : V → Prop) (γ : V) : Prop :=
  D.isHodge γ ∧ isPrimitive γ

/-- Abstract nonsurjectivity target only: these carriers do not construct a variety. -/
def ClayFourfoldDisproofStatement : Prop :=
  ∃ (Z V N : Type) (D : ProjectiveFourfoldSpace Z V N) (γ : V),
    D.isHodge γ ∧ ∀ z : Z, D.cl z ≠ γ

-- Legacy metadata tautology: not a proof of a disproof or of uninhabitedness.
theorem not_global_case_closed : True := trivial

-- Legacy metadata tautology: not a proof of a disproof or of uninhabitedness.
theorem nontrivial_does_not_kill_Rat : True := trivial

end FourfoldFilter
end Hodge
