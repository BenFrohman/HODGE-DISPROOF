/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Scheme-shaped fourfold spec

Intended domain of a Clay term: a projective scheme over `ℂ`, smooth of
dimension 4, with Betti `H^4(-,ℚ)`, primitive `(2,2)` classes, Chow `CH²`,
and geometric `cl`.

Mathlib 4.22 has schemes. It does not construct singular cohomology of a
complex projective fourfold or `cl_X`.

This file names the spec. It does **not** declare `ConcreteClayFourfold`,
`γ_clay`, or `false_of_geometric_miss_on_host`. It does **not** prove
`rational_hodge_conjecture_is_false`.
-/

namespace Hodge
namespace SchemeSpec

/-- Placeholder for a Mathlib scheme. Not constructed here. -/
axiom Scheme : Type
axiom IsProjective (X : Scheme) : Prop
axiom IsSmooth (X : Scheme) : Prop
axiom dimension4 (X : Scheme) : Prop
axiom overComplex (X : Scheme) : Prop

structure RealProjectiveFourfold where
  X : Scheme
  projective : IsProjective X
  smooth : IsSmooth X
  fourfold : dimension4 X
  complex : overComplex X

axiom SingularCohomologyQ (F : RealProjectiveFourfold) (m : Nat) : Type
axiom Hodge22 (F : RealProjectiveFourfold) : Type
axiom Primitive4 (F : RealProjectiveFourfold) : Type
axiom ChowSurfacesQ (F : RealProjectiveFourfold) : Type
axiom cycle_class (F : RealProjectiveFourfold) : ChowSurfacesQ F → SingularCohomologyQ F 4

def ClayFourfoldMiss (F : RealProjectiveFourfold) (γ : SingularCohomologyQ F 4) : Prop :=
  ∀ z : ChowSurfacesQ F, cycle_class F z = γ → False

/-- Uninhabited. No `ConcreteClayFourfold`. -/
def RationalHodgeConjectureIsFalse : Prop :=
  ∃ (F : RealProjectiveFourfold) (γ : SingularCohomologyQ F 4), ClayFourfoldMiss F γ

theorem not_proved : True := trivial

end SchemeSpec
end Hodge
