/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.GeometricHost

/-!
# Clay-level disproof specification

The geometric Σ-tuple

    ⟨ X_smooth, γ_Hdg, λ z h. false_of_geometric_miss h ⟩

This file names that tuple. It does not inhabit it.
-/

namespace Hodge
namespace Geometric

/-- Specification-only packaging of a Clay-level counterexample term.
The `presentation` of `X` is still a string in this interface;
Mathlib 4.22 does not supply schemes or a Jacobian criterion.
No inhabitant is given. -/
structure ClayDisproofTerm where
  X        : SmoothComplexProj
  k        : ℕ
  C        : CycleClassData X k
  γ_Hdg    : C.H2k
  γ_isHodge : γ_Hdg ∈ C.hdg
  false_of_geometric_miss :
    ∀ z : C.CH, C.cl z = γ_Hdg → False

def ClayDisproofTerm.toPred (T : ClayDisproofTerm) :
    isGeometricDisproof T.C T.γ_Hdg :=
  ⟨T.γ_isHodge, T.false_of_geometric_miss⟩

/-- The specification is recorded. The term is not. -/
theorem no_ClayDisproofTerm_supplied : True := trivial

end Geometric
end Hodge
