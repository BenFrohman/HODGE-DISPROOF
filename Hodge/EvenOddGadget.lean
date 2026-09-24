/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Host-specific parity gadget (pedagogical)

Shape of a *local* miss lemma: one named host, one named class, one lemma
bound to that pair. The arithmetic here is `2n ≠ 5`.

This is **not** a Clay inhabitant.

* `SmoothComplexFourfold.equations` is a `String`, not a scheme.
* `cl_geometric` is multiplication by 2 on `ℤ`, not
  `CH^k(X)_Q → H^{2k}(X, Q)`.
* The Fermat sextic fourfold `x0^6+⋯+x5^6=0` satisfies the *rational*
  Hodge conjecture (Shioda). Using that label as a counterexample host is
  the wrong direction.
* `verified_parity_gadget` inhabits `ParityDisproofStatement`, not
  `ClayDisproofStatement`.
-/

namespace Hodge
namespace EvenOddGadget

structure SmoothComplexFourfold where
  equations : String

structure HodgeClass (X : SmoothComplexFourfold) where
  vector : Int

structure AlgebraicCycle (X : SmoothComplexFourfold) where
  coefficients : Int

/-- Mock map. Not the geometric cycle-class map. -/
def cl_geometric (X : SmoothComplexFourfold) (z : AlgebraicCycle X) : HodgeClass X :=
  ⟨z.coefficients * 2⟩

/-- Label only. Shioda: rational Hodge *holds* on this fourfold. -/
def X_hypersurface : SmoothComplexFourfold :=
  ⟨"x0^6 + x1^6 + x2^6 + x3^6 + x4^6 + x5^6 = 0"⟩

def γ_odd : HodgeClass X_hypersurface := ⟨5⟩

lemma two_mul_ne_five (n : Int) : n * 2 ≠ 5 := by omega

lemma false_of_bad_cl_on_X
    {z : AlgebraicCycle X_hypersurface}
    (h_cl : cl_geometric X_hypersurface z = γ_odd) : False := by
  have h_val : (cl_geometric X_hypersurface z).vector = γ_odd.vector :=
    congrArg HodgeClass.vector h_cl
  change z.coefficients * 2 = 5 at h_val
  exact two_mul_ne_five z.coefficients h_val

def ParityDisproofStatement : Prop :=
  ∃ (X : SmoothComplexFourfold) (γ : HodgeClass X),
    ∀ z : AlgebraicCycle X, cl_geometric X z = γ → False

/-- Inhabitant of the *parity* Σ-type. Not Clay. -/
theorem verified_parity_gadget : ParityDisproofStatement :=
  ⟨X_hypersurface, γ_odd, fun _ h => false_of_bad_cl_on_X h⟩

theorem not_Clay : True := trivial

end EvenOddGadget
end Hodge
