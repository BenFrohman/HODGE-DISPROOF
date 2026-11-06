/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/
import Hodge.HardLefschetz

/-!
# Integrated geometric pack (specification)

Bundles the structures a Clay-level term would have to supply:
manifold, Hodge filtration, polarization, Chow + `cl`.

This file does **not** inhabit the pack. It does not block `zeroCycle`
by Hard Lefschetz: `L` acts on cohomology, `cl` acts on Chow. An
isomorphism `L^{n-m}` does not force `cl` to be nonzero.
-/

set_option autoImplicit false

namespace Hodge
namespace Integrated

open Analytic

/-- Carrier + dimension. Not a scheme. -/
structure SmoothComplexManifold where
  n : Nat
  carrier : Type

structure HodgeTheory (M : SmoothComplexManifold) where
  H : Nat → Type
  F_ok : Prop
  conj_ok : Prop
  graded_ok : Prop

structure PolarizedKaehler (M : SmoothComplexManifold) (HT : HodgeTheory M) where
  hard_lefschetz : Prop
  primitive_ok : Prop

structure ChowSystem (M : SmoothComplexManifold) (HT : HodgeTheory M) where
  easy_arrow : Prop   -- existing interface condition, not a proof of geometry
  CH : Nat → Type
  cl : (k : Nat) → CH k → HT.H (2 * k)

/-- Parameterized target, requiring all conditions rather than an `∧ True` placeholder.
The carrier-only structures still need an independently constructed geometric realization. -/
def ClayHodgeConjectureDisproof
    (isProjective : SmoothComplexManifold → Prop)
    (isRationalHodge22 : (M : SmoothComplexManifold) → (HT : HodgeTheory M) → HT.H 4 → Prop) : Prop :=
  ∃ (M : SmoothComplexManifold) (HT : HodgeTheory M)
    (_PK : PolarizedKaehler M HT) (CS : ChowSystem M HT) (γ : HT.H 4),
      M.n = 4 ∧ isProjective M ∧ isRationalHodge22 M HT γ ∧ CS.easy_arrow ∧
        ∀ z : CS.CH 2, CS.cl 2 z ≠ γ

-- Legacy metadata tautology: not a proof of a disproof or of uninhabitedness.
theorem ClayHodgeConjectureDisproof_unfilled : True := trivial

/-- Hard Lefschetz does not refute a zero cycle-class map. -/
-- Legacy metadata tautology: not a proof of a disproof or of uninhabitedness.
theorem L_iso_does_not_block_cl_zero : True := trivial

end Integrated
end Hodge
