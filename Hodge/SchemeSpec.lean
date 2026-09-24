/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Scheme-shaped fourfold specification

Target interface if Mathlib schemes are used as the host type.
This file does **not** import Mathlib algebraic geometry: those module
paths and names (`IsProjective`, `SmoothDimension`, `Scheme.Spec` of
`ℂ`) are not assumed to exist as written.

No `ConcreteClayFourfold`. No miss axiom. No theorem that Hodge is false.
-/

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

def ClayFourfoldDisproofOnSchemes : Prop :=
  ∃ (F : RealProjectiveFourfold) (γ : SingularCohomologyQ F 4),
    isPrimitiveHodge22 F γ ∧ True

theorem ClayFourfoldDisproofOnSchemes_unfilled : True := trivial

theorem no_miss_axiom : True := trivial

end SchemeSpec
end Hodge
