/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.Basic

/-!
# Type of a counterexample term

A term of `¬ ∀ D γ, ∃ z, cl z = γ` (restricted to Hodge classes `γ`)
is the triple

    (D_bad, γ_bad, ∀ z, cl z = γ_bad → False)

plus the side-condition `γ_bad ∈ D_bad.hodgeClasses`.

This file records that type. It is not a Clay close.
-/

namespace Hodge

variable {Z V N : Type*}
    [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup N] [Module ℚ N]

/-- A pair `(D, γ)` is a Hodge-disproof pair when `γ` is a Hodge class
and is missed by `cl`. -/
def isHodgeDisproof (D : Datum Z V N) (γ : V) : Prop :=
  γ ∈ D.hodgeClasses ∧ ∀ z : Z, D.cl z = γ → False

/-- Type-level packaging of a counterexample term. -/
structure HodgeDisproof (Z V N : Type*)
    [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup N] [Module ℚ N] where
  D_bad     : Datum Z V N
  γ_bad     : V
  γ_isHodge : γ_bad ∈ D_bad.hodgeClasses
  no_cycle  : ∀ z : Z, D_bad.cl z = γ_bad → False

namespace HodgeDisproof

def toPred (H : HodgeDisproof Z V N) : isHodgeDisproof H.D_bad H.γ_bad :=
  ⟨H.γ_isHodge, H.no_cycle⟩

theorem to_neg (H : HodgeDisproof Z V N) : ¬ H.D_bad.HodgeConjecture := by
  intro h
  rcases h H.γ_isHodge with ⟨z, hz⟩
  exact H.no_cycle z hz

end HodgeDisproof

theorem isHodgeDisproof.not_hodgeConjecture
    {D : Datum Z V N} {γ : V} (h : isHodgeDisproof D γ) :
    ¬ D.HodgeConjecture := by
  intro hc
  rcases hc h.1 with ⟨z, hz⟩
  exact h.2 z hz

/-- Linear-algebra sentinel. `cl = 0`, `γ = 1`. Not a variety. -/
def zeroCycle : Datum ℚ ℚ ℚ where
  codim := 2
  obstruction := 0
  cl := 0
  cl_isHodge := by intro _; rfl

theorem zeroCycle_isHodgeDisproof : isHodgeDisproof zeroCycle (1 : ℚ) := by
  constructor
  · change (1 : ℚ) ∈ LinearMap.ker (0 : ℚ →ₗ[ℚ] ℚ)
    simp
  · intro z h
    change (0 : ℚ) = 1 at h
    exact zero_ne_one h

def zeroCycleDisproof : HodgeDisproof ℚ ℚ ℚ where
  D_bad     := zeroCycle
  γ_bad     := 1
  γ_isHodge := zeroCycle_isHodgeDisproof.1
  no_cycle  := zeroCycle_isHodgeDisproof.2

end Hodge
