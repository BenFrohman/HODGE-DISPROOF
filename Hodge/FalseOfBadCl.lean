/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.Basic
import Hodge.Disproof

/-!
# `false_of_bad_cl`

Third field of a Hodge-disproof term: `∀ z, cl z = γ_bad → False`.

Closes on `zeroCycle` (`cl = 0`, `γ = 1`). Does not close on the
classical islands (`cl = id`). Does not inhabit a geometric fourfold.
-/

namespace Hodge

def FalseOfBadCl {Z V N : Type*}
    [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup N] [Module ℚ N]
    (D : Datum Z V N) (γ : V) : Prop :=
  ∀ z : Z, D.cl z = γ → False

lemma false_of_bad_cl_zeroCycle
    (z : ℚ) (h_cl : zeroCycle.cl z = (1 : ℚ)) : False := by
  change (0 : ℚ →ₗ[ℚ] ℚ) z = 1 at h_cl
  have h0 : (0 : ℚ →ₗ[ℚ] ℚ) z = 0 := LinearMap.zero_apply z
  rw [h0] at h_cl
  exact zero_ne_one (h_cl)

lemma false_of_bad_cl_zeroCycle' 
    (z : ℚ) (h_cl : zeroCycle.cl z = (1 : ℚ)) : False := by
  simpa [zeroCycle] using h_cl

def zeroCycle_no_cycle : FalseOfBadCl zeroCycle (1 : ℚ) :=
  false_of_bad_cl_zeroCycle

example (z : ℚ) : zeroCycle.cl z = 0 := rfl

def projectiveFourSpace : Datum ℚ ℚ ℚ where
  codim := 2
  obstruction := 0
  cl := LinearMap.id
  cl_isHodge := by intro _; simp

def kleinQuadric : Datum (ℚ × ℚ) (ℚ × ℚ) ℚ where
  codim := 2
  obstruction := 0
  cl := LinearMap.id
  cl_isHodge := by intro _; simp

def productOfPlanes : Datum (ℚ × ℚ × ℚ) (ℚ × ℚ × ℚ) ℚ where
  codim := 2
  obstruction := 0
  cl := LinearMap.id
  cl_isHodge := by intro _; simp

theorem constructP4_section (γ : ℚ) : projectiveFourSpace.cl γ = γ := rfl
theorem klein_section (γ : ℚ × ℚ) : kleinQuadric.cl γ = γ := rfl
theorem product_section (γ : ℚ × ℚ × ℚ) : productOfPlanes.cl γ = γ := rfl

theorem no_false_of_bad_cl_on_P4 (γ : ℚ) :
    ¬ FalseOfBadCl projectiveFourSpace γ := fun h => h γ rfl

theorem no_false_of_bad_cl_on_klein (γ : ℚ × ℚ) :
    ¬ FalseOfBadCl kleinQuadric γ := fun h => h γ rfl

theorem no_false_of_bad_cl_on_product (γ : ℚ × ℚ × ℚ) :
    ¬ FalseOfBadCl productOfPlanes γ := fun h => h γ rfl

end Hodge
