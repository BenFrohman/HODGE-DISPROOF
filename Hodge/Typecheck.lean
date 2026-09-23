/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.Basic
import Hodge.Disproof

/-!
# Typecheck companion

Records the Prop-level negation and the gadget inhabitant.
Does not refute Clay Hodge.
-/

namespace Hodge

def HodgeForAll {Z V N : Type*}
    [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup N] [Module ℚ N]
    (D : Datum Z V N) : Prop :=
  ∀ γ : V, γ ∈ D.hodgeClasses → ∃ z : Z, D.cl z = γ

theorem HodgeForAll_iff {Z V N : Type*}
    [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup N] [Module ℚ N]
    (D : Datum Z V N) : HodgeForAll D ↔ D.HodgeConjecture := by
  constructor
  · intro h v hv; exact h v hv
  · intro h γ hγ; exact h hγ

def HodgeDisproofStatement : Prop :=
  ∃ (Z V N : Type*)
    (_ : AddCommGroup Z) (_ : Module ℚ Z)
    (_ : AddCommGroup V) (_ : Module ℚ V)
    (_ : AddCommGroup N) (_ : Module ℚ N)
    (D : Datum Z V N) (γ : V),
      isHodgeDisproof D γ

theorem HodgeDisproofStatement_of_gadget : HodgeDisproofStatement :=
  ⟨ℚ, ℚ, ℚ, inferInstance, inferInstance, inferInstance,
    inferInstance, inferInstance, inferInstance,
    zeroCycle, 1, zeroCycle_isHodgeDisproof⟩

theorem zeroCycle_not_hodge : ¬ zeroCycle.HodgeConjecture :=
  isHodgeDisproof.not_hodgeConjecture zeroCycle_isHodgeDisproof

end Hodge
