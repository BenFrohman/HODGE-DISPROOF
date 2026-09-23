/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.Algebra.Module.Submodule.Lattice
import Mathlib.LinearAlgebra.Span

/-!
# Interface for the Hodge conjecture

Sister copy of `BenFrohman/HODGE` `Hodge/Basic.lean`.
This file records the linear-algebraic shape of the statement. It does not
construct algebraic cycles from Hodge classes. Clay status remains open.
-/

namespace Hodge

/-- The data needed to *state* the Hodge conjecture on an abstract coefficient
triple:
* `Z` — rational algebraic cycles of a fixed codimension,
* `V` — ambient rational cohomology of even degree,
* `N` — a complement that receives the off-diagonal Hodge pieces.

`cl` is the cycle class map. `obstruction` vanishes on algebraic classes. -/
structure Datum (Z V N : Type*)
    [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup N] [Module ℚ N] where
  /-- The integer `k` in `H^{2k}`. -/
  codim : ℕ
  /-- Projection onto the off-diagonal Hodge pieces. -/
  obstruction : V →ₗ[ℚ] N
  /-- The cycle class map. -/
  cl : Z →ₗ[ℚ] V
  /-- Geometry produces Hodge classes: the easy arrow. -/
  cl_isHodge : ∀ z, obstruction (cl z) = 0

namespace Datum

variable {Z V N : Type*}
    [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup N] [Module ℚ N]

/-- Hodge classes: the kernel of the off-diagonal obstruction. -/
def hodgeClasses (D : Datum Z V N) : Submodule ℚ V :=
  LinearMap.ker D.obstruction

/-- Algebraic classes: the image of the cycle class map. -/
def algebraicClasses (D : Datum Z V N) : Submodule ℚ V :=
  LinearMap.range D.cl

/-- Every algebraic class is a Hodge class. This is `cl_isHodge` as a
submodule inclusion. -/
theorem algebraicClasses_le_hodgeClasses (D : Datum Z V N) :
    D.algebraicClasses ≤ D.hodgeClasses := by
  intro v hv
  rcases hv with ⟨z, rfl⟩
  exact D.cl_isHodge z

/-- The Hodge conjecture, as a statement about this datum: every Hodge class
is algebraic. -/
def HodgeConjecture (D : Datum Z V N) : Prop :=
  D.hodgeClasses ≤ D.algebraicClasses

end Datum

end Hodge
