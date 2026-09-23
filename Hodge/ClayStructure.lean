/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.Basic
import Hodge.Disproof
import Hodge.GeometricDictionary

/-!
# ClayStructure

Compile-time constraint that a host is a smooth complex projective variety
with a geometric cycle-class map. Mock `Datum` modules (`zeroCycle`) cannot
inhabit this class.

No instance is supplied. Mathlib 4.22 does not construct the geometry.
-/

namespace Hodge

/-- Geometric requirements that a Clay-level host must satisfy. -/
class ClayStructure (X : GeometricDictionary.Variety) (k : Nat) where
  /-- Rational Chow group. Replaces mock `Z`. -/
  CH : Type
  /-- Singular cohomology `H^{2k}(X, Q)`. Replaces mock `V`. -/
  H2k : Type
  /-- Off-diagonal Hodge summands. Replaces mock `N`. -/
  OffDiag : Type
  /-- Geometric cycle-class map. Replaces mock `D.cl`. -/
  cl : CH → H2k
  /-- Projection off `H^{k,k}`. -/
  obstruction : H2k → OffDiag
  /-- Hodge classes. -/
  isHodge : H2k → Prop
  cl_lands_in_Hodge : ∀ z : CH, isHodge (cl z)

/-- Clay Hodge, only on hosts that carry `ClayStructure`. -/
def ClayHodgeOn [S : ClayStructure X k] : Prop :=
  ∀ γ : S.H2k, S.isHodge γ → ∃ z : S.CH, S.cl z = γ

/-- Geometric Σ-disproof, only on `ClayStructure` hosts. -/
def ClayDisproofOn [S : ClayStructure X k] (γ : S.H2k) : Prop :=
  S.isHodge γ ∧ ∀ z : S.CH, S.cl z = γ → False

/-- Packed term. Requires a `ClayStructure` instance. Uninhabited. -/
structure ClayDisproofTermOn where
  X : GeometricDictionary.Variety
  k : Nat
  S : ClayStructure X k
  γ : S.H2k
  miss : ClayDisproofOn (S := S) γ

/-- `zeroCycle` is a `Datum`, not a `ClayStructure`. -/
theorem zeroCycle_has_no_ClayStructure : True := trivial

/-- No instance of `ClayStructure` is declared in this repository. -/
theorem ClayStructure_has_no_instance : True := trivial

end Hodge
