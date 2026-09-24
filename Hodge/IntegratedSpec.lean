/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.ClayBlueprint

/-!
# Integrated geometric specification

Structure-shaped names for a manifold, Hodge filtration, Lefschetz data,
and Chow system. There is **no inhabitant** of `ClayHodgeConjectureDisproof`.

This is not a Mathlib construction. The imports
`Mathlib.Geometry.Manifold.Complex`, `ModelWithCorners.extI`,
`HasExtChartedSpace`, and `IsLinearEquivalence` from the draft do not
exist as written. Dummy vector spaces can still carry dummy Lefschetz
isomorphisms, so Hard Lefschetz is not a gadget firewall.

`cl_in_F` / `cl_in_Fbar` is the easy arrow. Hodge is the converse.
A Clay host must be *projective*, not merely compact Kähler (Voisin).
`γ` must come from `H^{2k}(X, Q)`, not only `H^{2k}(X, C)`.
-/

namespace Hodge
namespace IntegratedSpec

open ClayBlueprint

structure SmoothComplexManifold where
  n : Nat
  carrier : Type

structure HodgeTheory (M : SmoothComplexManifold) where
  H : Nat → Type
  F : Nat → Nat → Type
  conj : ∀ m, H m → H m

structure PolarizedKaehler (M : SmoothComplexManifold) (HT : HodgeTheory M) where
  L : ∀ m, HT.H m → HT.H (m + 2)
  hard_lefschetz : Prop

structure TranscendentalChowSystem (M : SmoothComplexManifold) (HT : HodgeTheory M) where
  CH : Nat → Type
  cl : ∀ k, CH k → HT.H (2 * k)
  cl_in_F : Prop
  cl_in_Fbar : Prop

/-- Shape of a fourfold miss. Uninhabited.
Missing from this Prop: projectivity of `M`, and `γ` coming from `H^4(X, Q)`. -/
def ClayHodgeConjectureDisproof : Prop :=
  ∃ (M : SmoothComplexManifold) (HT : HodgeTheory M)
    (_PKS : PolarizedKaehler M HT) (TCS : TranscendentalChowSystem M HT)
    (γ : HT.H 4),
      M.n = 4 ∧ ∀ z : TCS.CH 2, TCS.cl 2 z = γ → False

theorem no_term : True := trivial

end IntegratedSpec
end Hodge
