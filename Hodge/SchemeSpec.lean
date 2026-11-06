/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

/-!
# Scheme-shaped fourfold specification

Target interface if Mathlib schemes are used as the host type.
This file does **not** import Mathlib algebraic geometry: those module
paths and names (`IsProjective`, `SmoothDimension`, `Scheme.Spec` of
`ℂ`) are not assumed to exist as written.

No `ConcreteClayFourfold`. No miss axiom. No theorem that Hodge is false.
-/

set_option autoImplicit false

namespace Hodge
namespace SchemeSpec

axiom Scheme : Type
axiom IsProjectiveOverC (X : Scheme) : Prop
axiom IsSmooth (X : Scheme) : Prop
axiom IsDimension (X : Scheme) (n : Nat) : Prop

structure RealProjectiveFourfold where
  X : Scheme
  is_projective : IsProjectiveOverC X
  is_smooth : IsSmooth X
  is_fourfold : IsDimension X 4

axiom SingularCohomologyQ (F : RealProjectiveFourfold) (m : Nat) : Type
axiom SingularCohomologyC (F : RealProjectiveFourfold) (m : Nat) : Type
axiom HodgeSubspace_2_2 (F : RealProjectiveFourfold) : Type
axiom PrimitiveCohomologyQ_4 (F : RealProjectiveFourfold) : Type
axiom ChowGroupSurfacesQ (F : RealProjectiveFourfold) : Type
axiom cycle_class_map (F : RealProjectiveFourfold) : Type
axiom isPrimitiveHodge22 (F : RealProjectiveFourfold) (γ : SingularCohomologyQ F 4) : Prop

/-- A cycle-class map must actually be supplied; the legacy `cycle_class_map`
Type above does not specify a function and is not used by this target. -/
def ClayFourfoldDisproofOnSchemes
    (cl : (F : RealProjectiveFourfold) → ChowGroupSurfacesQ F → SingularCohomologyQ F 4) : Prop :=
  ∃ (F : RealProjectiveFourfold) (γ : SingularCohomologyQ F 4),
    isPrimitiveHodge22 F γ ∧ ∀ z : ChowGroupSurfacesQ F, cl F z ≠ γ

theorem no_disproof_of_surjective
    (cl : (F : RealProjectiveFourfold) → ChowGroupSurfacesQ F → SingularCohomologyQ F 4)
    (h : ∀ F γ, ∃ z, cl F z = γ) : ¬ ClayFourfoldDisproofOnSchemes cl := by
  rintro ⟨F, γ, _, hmiss⟩
  obtain ⟨z, hz⟩ := h F γ
  exact hmiss z hz

-- Legacy metadata tautology: not a proof of a disproof or of uninhabitedness.
theorem ClayFourfoldDisproofOnSchemes_unfilled : True := trivial

-- Legacy metadata tautology: not a proof of a disproof or of uninhabitedness.
theorem no_miss_axiom : True := trivial

end SchemeSpec
end Hodge
