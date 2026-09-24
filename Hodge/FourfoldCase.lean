/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.PrimitiveDecomposition

/-!
# Remaining Clay case on fourfolds

Lefschetz (1,1) treats type `(1,1)`.
Hard Lefschetz treats complementary degree `(3,3)`.
Lefschetz decomposition writes non-primitive `(2,2)` classes as `L` of `(1,1)`.
What remains on a smooth complex projective fourfold is:

    every primitive rational class of type (2,2) is algebraic.

This file names that Π-sentence. It does not inhabit its negation.
-/

namespace Hodge
namespace Fourfold

open ClayBlueprint Primitive

/-- Official remaining content of rational Hodge in dimension 4. -/
def HodgeFourfoldPrimitive (X : ComplexProjectiveVariety) (hX : IsSmooth X) : Prop :=
  ∀ γ : RationalCohomology X 2,
    PrimitiveHodgeClass X 2 γ →
      ∃ z : RationalChowGroup X 2, geometric_cl X 2 z = γ

/-- Clay on fourfolds, as a Π-sentence. -/
def ClayFourfold : Prop :=
  ∀ (X : ComplexProjectiveVariety) (hX : IsSmooth X),
    HodgeFourfoldPrimitive X hX

/-- Negation: one primitive (2,2) miss. Uninhabited. -/
def ClayFourfoldNegation : Prop :=
  ∃ (X : ComplexProjectiveVariety) (hX : IsSmooth X) (γ : RationalCohomology X 2),
    PrimitiveHodgeClass X 2 γ ∧
      ∀ z : RationalChowGroup X 2, geometric_cl X 2 z = γ → False

theorem ClayFourfoldNegation_unfilled : True := trivial

end Fourfold
end Hodge
