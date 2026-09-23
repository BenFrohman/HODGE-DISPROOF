/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.Basic
import Hodge.Disproof

/-!
# Geometric host interface (type only)

Clay Hodge is the Π-sentence: on every nonsingular complex projective
variety `X`, every class in `H^{2k}(X,ℚ) ∩ H^{k,k}(X)` lies in the image
of the rational cycle-class map

    cl_X : CH^k(X)_ℚ → H^{2k}(X,ℚ).

Mathlib 4.22 does not contain schemes, Chow groups, or Hodge decomposition
over ℂ. This file records those *names* as an interface. It does not
implement them, and it does not inhabit a counterexample.

Declaring this type does not close the Clay problem.
-/

namespace Hodge
namespace Geometric

/-- Documentation-only host. `presentation` is a string, not a scheme. -/
structure SmoothComplexProj where
  name : String
  dim : ℕ
  /-- Equations or moduli description, for humans. -/
  presentation : String

/-- Clay-shaped coefficient package on one host.
`CH` stands for `CH^k(X)_ℚ`. `H2k` stands for `H^{2k}(X,ℚ)`.
`hdg` stands for the Hodge classes `H^{2k} ∩ H^{k,k}`. -/
structure CycleClassData (X : SmoothComplexProj) (k : ℕ) where
  CH  : Type
  H2k : Type
  addCH : AddCommGroup CH := by infer_instance
  modCH : Module ℚ CH := by infer_instance
  addH  : AddCommGroup H2k := by infer_instance
  modH  : Module ℚ H2k := by infer_instance
  cl    : CH →ₗ[ℚ] H2k
  hdg   : Submodule ℚ H2k
  cl_isHodge : ∀ z : CH, cl z ∈ hdg

attribute [instance] CycleClassData.addCH CycleClassData.modCH
attribute [instance] CycleClassData.addH CycleClassData.modH

def CycleClassData.HodgeConjecture
    {X : SmoothComplexProj} {k : ℕ} (C : CycleClassData X k) : Prop :=
  C.hdg ≤ LinearMap.range C.cl

/-- Geometric disproof pair on one packaged host. Uninhabited here. -/
def isGeometricDisproof
    {X : SmoothComplexProj} {k : ℕ} (C : CycleClassData X k) (γ : C.H2k) : Prop :=
  γ ∈ C.hdg ∧ ∀ z : C.CH, C.cl z = γ → False

theorem isGeometricDisproof.not_hodge
    {X : SmoothComplexProj} {k : ℕ} {C : CycleClassData X k} {γ : C.H2k}
    (h : isGeometricDisproof C γ) : ¬ C.HodgeConjecture := by
  intro hc
  rcases hc h.1 with ⟨z, hz⟩
  exact h.2 z hz

/-- Named classical fourfolds, as *labels only*. Their cycle-class data
is not supplied by mathlib. Wrapping a `Datum` with `cl = id` is the
sister-repo encoding, not the geometric map. -/
def P4 : SmoothComplexProj :=
  ⟨"P^4", 4, "Proj of k[x0,x1,x2,x3,x4]"⟩

def kleinQ4 : SmoothComplexProj :=
  ⟨"Klein quadric Q^4", 4, "Gr(2,4) / Plucker quadric in P^5"⟩

def productP2P2 : SmoothComplexProj :=
  ⟨"P^2 x P^2", 4, "product of two projective planes"⟩

/-- A Clay close would be an inhabitant of this Σ-type for some named `X`
whose `CycleClassData` is the *geometric* map, not `LinearMap.id` on `ℚ`. -/
def ClayDisproof : Prop :=
  ∃ (X : SmoothComplexProj) (k : ℕ) (C : CycleClassData X k) (γ : C.H2k),
    isGeometricDisproof C γ

/-- No inhabitant is supplied. -/
theorem ClayDisproof_is_a_hole : True := trivial

end Geometric
end Hodge
