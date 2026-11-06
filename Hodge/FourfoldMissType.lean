/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

import Std.Internal.Rat

/-!
# Fourfold miss type

`rational_hodge_conjecture_is_false` is the claim that some fourfold
carries a Hodge class that is not a rational combination of surface
classes. The type is written. The constructor is not.

No geometric witness is supplied. This is not a proof that the abstract type is uninhabited.
-/

set_option autoImplicit false

namespace Hodge
namespace FourfoldMiss

open Std.Internal (Rat)

axiom SmoothProjFourfold : Type
axiom HodgeClass : SmoothProjFourfold → Type
axiom Surface : SmoothProjFourfold → Type
axiom cycleClass : (X : SmoothProjFourfold) → Surface X → HodgeClass X
axiom HodgeClassAdd : (X : SmoothProjFourfold) → HodgeClass X → HodgeClass X → HodgeClass X
axiom HodgeClassSmul : (X : SmoothProjFourfold) → Rat → HodgeClass X → HodgeClass X

/-- Finite rational combinations, with an explicitly supplied zero class.
The existing operations remain abstract; no geometric realization is asserted. -/
noncomputable def surfaceCombination (zeroClass : (X : SmoothProjFourfold) → HodgeClass X)
    (X : SmoothProjFourfold) : List (Rat × Surface X) → HodgeClass X
  | [] => zeroClass X
  | (a, z) :: zs => HodgeClassAdd X (HodgeClassSmul X a (cycleClass X z))
      (surfaceCombination zeroClass X zs)

def rational_hodge_conjecture_is_false
    (zeroClass : (X : SmoothProjFourfold) → HodgeClass X) : Prop :=
  ∃ (X : SmoothProjFourfold) (γ : HodgeClass X),
    ∀ zs : List (Rat × Surface X), surfaceCombination zeroClass X zs ≠ γ

-- Legacy metadata tautology: not a proof of a disproof or of uninhabitedness.
theorem no_constructor : True := trivial

end FourfoldMiss
end Hodge
