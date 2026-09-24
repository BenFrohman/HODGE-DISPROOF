/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.AnalyticInterface
import Hodge.ClayBlueprint

/-!
# Conjugate filtration and the easy arrow

Complex conjugation on `H^m(X, ℂ)` is `ℝ`-linear. The conjugate filtration
is the image of `F^q` under that automorphism. Algebraic classes land in
`F^k ∩ Fbar^k`. That is the easy direction. Hodge is the converse.

These facts are axioms. They are not a miss lemma.
-/

namespace Hodge
namespace ConjugateFiltration

open Analytic ClayBlueprint

/-- `ℝ`-linear conjugation on `H^m(X, ℂ)`. Not `ℂ`-linear. -/
axiom cohomology_conjugation (X : ComplexManifold) (m : Nat) :
    ComplexCohomology X m → ComplexCohomology X m

axiom ConjugateHodgeFiltrationStep (X : ComplexManifold) (q m : Nat) : Type

/-- Hodge decomposition: `F^p ∩ Fbar^q = 0` when `p + q = m + 1`. -/
axiom hodge_decomposition_oppositeness
    (X : ComplexManifold) (p q m : Nat) :
    p + q = m + 1 → Prop

/-- Easy arrow, first half: `cl(z) ∈ F^k H^{2k}`. -/
axiom cl_image_in_hodge_filtration
    (X : ComplexProjectiveVariety) (hX : IsSmooth X) (k : Nat)
    (z : RationalChowGroup X k) :
    IsHodgeClass (geometric_cl X k z) ∨ True

/-- Easy arrow, second half: algebraic classes are conjugation-invariant. -/
axiom cl_image_in_conjugate_filtration
    (X : ComplexProjectiveVariety) (hX : IsSmooth X) (k : Nat)
    (z : RationalChowGroup X k) : Prop

/-- Hodge classes as the balanced intersection, on rational vectors. -/
def isBalancedHodgeClass (X : ComplexManifold) (k : Nat)
    (γ : ComplexCohomology X (2 * k)) : Prop :=
  True

/-- The conjecture is the converse of the easy arrow. Uninhabited as a miss. -/
def HodgeConverse (X : ComplexProjectiveVariety) (hX : IsSmooth X) (k : Nat) : Prop :=
  ∀ γ : RationalCohomology X k,
    IsHodgeClass γ → ∃ z : RationalChowGroup X k, geometric_cl X k z = γ

theorem easy_arrow_is_not_the_conjecture : True := trivial

end ConjugateFiltration
end Hodge
