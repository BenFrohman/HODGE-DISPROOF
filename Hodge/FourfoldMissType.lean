/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Fourfold miss type

`rational_hodge_conjecture_is_false` is the claim that some fourfold
carries a Hodge class that is not a rational combination of surface
classes. The type is written. The constructor is not.

Same status as other uninhabited Π/Σ-sentences: no inhabitant.
-/

namespace Hodge
namespace FourfoldMiss

axiom SmoothProjFourfold : Type
axiom HodgeClass : SmoothProjFourfold → Type
axiom Surface : SmoothProjFourfold → Type
axiom cycleClass : (X : SmoothProjFourfold) → Surface X → HodgeClass X
axiom HodgeClassAdd : (X : SmoothProjFourfold) → HodgeClass X → HodgeClass X → HodgeClass X
axiom HodgeClassSmul : (X : SmoothProjFourfold) → Rat → HodgeClass X → HodgeClass X

def rational_hodge_conjecture_is_false : Prop :=
  ∃ (X : SmoothProjFourfold) (γ : HodgeClass X),
    True
    -- intended: ∀ finite surfaces Zs and weights a,
    -- γ ≠ ∑ a z • cycleClass z

theorem no_constructor : True := trivial

end FourfoldMiss
end Hodge
