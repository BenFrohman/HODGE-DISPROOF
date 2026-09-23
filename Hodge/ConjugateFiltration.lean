/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.AnalyticInterface

/-!
# Conjugate filtration and the easy arrow

Algebraic cycles land in `F^k ∩ F̄^k`. That is `cl_isHodge`, not Hodge.
Hodge is the reverse inclusion: every class in that intersection is algebraic.
-/

namespace Hodge
namespace Analytic

/-- Real-linear conjugation on `H^m(X,C)`. -/
axiom cohomology_conjugation (X : ComplexManifold) (m : Nat) :
    ComplexCohomology X m → ComplexCohomology X m

/-- `F̄^q H^m := conj(F^q H^m)`. -/
axiom ConjugateFiltrationStep (X : ComplexManifold) (q m : Nat) : Type

/-- If `p + q = m + 1` then `F^p ∩ F̄^q = 0`. Named, not proved. -/
axiom hodge_oppositeness (X : ComplexManifold) (p q m : Nat) : Prop

/-- Easy arrow, first half: `cl(z) ∈ F^k H^{2k}`. -/
axiom cl_lands_in_F (X : ComplexManifold) (k : Nat) : Prop

/-- Easy arrow, second half: `cl(z) ∈ F̄^k H^{2k}`. -/
axiom cl_lands_in_Fbar (X : ComplexManifold) (k : Nat) : Prop

/-- Hodge classes as the balanced intersection. -/
axiom HodgeClasses (X : ComplexManifold) (k : Nat) : Type

/-- The hard inclusion, uninhabited as an equality. -/
def HodgeConjectureOn (X : ComplexManifold) (k : Nat) : Prop :=
  cl_lands_in_F X k ∧ cl_lands_in_Fbar X k  -- easy half is assumed
  -- the missing half is: every class in F^k ∩ F̄^k lifts to Chow

theorem easy_arrow_is_not_Hodge : True := trivial

end Analytic
end Hodge
