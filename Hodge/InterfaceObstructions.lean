/-
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Authors: Benjamin Stanley Frohman
-/
import Mathlib.Tactic.Ring
import Hodge.GeometricHost

/-!
# Abstract-interface obstructions (not geometric counterexamples)

These diagnostics preserve the existing interface statements and show exactly
what they do not enforce. No scheme, Hodge comparison, or geometric cycle map
is constructed here. No geometric-realization axiom is introduced.
-/

namespace Hodge.InterfaceObstructions

open Geometric

/-- The existing P4 *label* accepts arbitrary rational data unrelated to P4. -/
def labelledP4ZeroMapData : CycleClassData P4 2 where
  CH := ℚ
  H2k := ℚ
  addCH := inferInstance
  modCH := inferInstance
  addH := inferInstance
  modH := inferInstance
  cl := 0
  hdg := ⊤
  cl_isHodge := by intro z; trivial

/-- A miss in the abstract string-labelled interface, NOT in cohomology of P4. -/
theorem labelledP4_has_abstract_miss :
    isGeometricDisproof labelledP4ZeroMapData (1 : ℚ) := by
  constructor
  · trivial
  · intro z hz
    change (0 : ℚ) = 1 at hz
    exact zero_ne_one hz

/-- Regression: the legacy target named `Geometric.ClayDisproof` is inhabited
by arbitrary labelled data. This is interface insufficiency, not Hodge being false. -/
theorem abstractClayDisproof_interface_inhabited : Geometric.ClayDisproof :=
  ⟨P4, 2, labelledP4ZeroMapData, (1 : ℚ), labelledP4_has_abstract_miss⟩

/-- The integer parity obstruction disappears after passing to rational coefficients. -/
theorem rational_two_mul_surjective : Function.Surjective (fun q : ℚ => q * 2) := by
  intro y
  refine ⟨y / 2, ?_⟩
  ring

/-- A nonzero detected cycle class excludes the full zero-map model.
This says nothing about a separately defined primitive projection. -/
theorem cycle_map_ne_zero_of_nonzero_class
    {Z V : Type*} [AddCommGroup Z] [Module ℚ Z]
    [AddCommGroup V] [Module ℚ V]
    (cl : Z →ₗ[ℚ] V) (z : Z) (h : cl z ≠ 0) : cl ≠ 0 := by
  intro hz
  apply h
  rw [hz]
  rfl

/-- One nonzero rational cycle class exhausts a one-dimensional rational target.
Applying this to actual cohomology requires an independently justified identification. -/
theorem rational_cycle_map_surjective_of_nonzero_class
    {Z : Type*} [AddCommGroup Z] [Module ℚ Z]
    (cl : Z →ₗ[ℚ] ℚ) (z : Z) (hz : cl z ≠ 0) : Function.Surjective cl := by
  intro y
  refine ⟨(y / cl z) • z, ?_⟩
  rw [map_smul]
  change (y / cl z) * cl z = y
  exact div_mul_cancel₀ y hz

end Hodge.InterfaceObstructions
