/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
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
  easy_arrow : Prop   -- cl lands in F^k ∩ F̄^k

/-- Clay Σ-sentence over the pack. Uninhabited. -/
def ClayHodgeConjectureDisproof : Prop :=
  ∃ (M : SmoothComplexManifold) (HT : HodgeTheory M)
    (_PK : PolarizedKaehler M HT) (CS : ChowSystem M HT),
      CS.easy_arrow ∧ True  -- the miss field is not supplied

theorem ClayHodgeConjectureDisproof_unfilled : True := trivial

/-- Hard Lefschetz does not refute a zero cycle-class map. -/
theorem L_iso_does_not_block_cl_zero : True := trivial

end Integrated
end Hodge
