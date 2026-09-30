/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.GeometricHost

/-!
# Coefficient ring of Clay Hodge

Clay is the *rational* Hodge conjecture. The coefficient field is `ℚ`.
Replacing `ℚ` by `ℤ` yields the integral Hodge conjecture, a different
sentence, already false in general.

The ledger letter `Z` is *not* `ℤ`. It is the rational cokernel dimension
on a named host. That integer is not computed here.
-/

namespace Hodge
namespace Geometric

/-- Clay coefficient field. Not `ℤ`. -/
abbrev ClayCoeff : Type := ℚ

theorem clayCoeff_is_rat : ClayCoeff = ℚ := rfl

theorem clayCoeff_charZero : CharZero ClayCoeff := inferInstance

theorem clayCoeff_zero_ne_one : (0 : ClayCoeff) ≠ 1 := zero_ne_one

/-- Integral Hodge uses `ℤ`. That is not Clay. -/
abbrev IntegralCoeff : Type := ℤ

theorem integral_is_not_clay : IntegralCoeff ≠ ClayCoeff := by
  -- distinct Lean names; the mathematical split is the comment above.
  decide

/-- Visible algebraic lower bound recorded from the 3×3 Gram. -/
def visibleAlgebraicRankFloor : ℕ := 3

theorem gram_det_numeral : (6 : ℕ) * 21 * 21 - 21 - 21 = 2604 := by decide

theorem visibleAlgebraicRankFloor_eq : visibleAlgebraicRankFloor = 3 := rfl

/-- The rational cokernel dimension on `V(F)`.
    Not assigned a numeral. Not `ℤ`. -/
def ZCokernelUncomputed : Prop := True

theorem ZCokernel_uncomputed : ZCokernelUncomputed := trivial

end Geometric
end Hodge
