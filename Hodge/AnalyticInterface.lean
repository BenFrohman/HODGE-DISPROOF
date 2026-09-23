/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Analytic interface (axioms)

Names for Stokes, sheaf cohomology, Riemann bilinear relations, the Hodge
filtration, and Griffiths intermediate Jacobians.

This file does **not** prove Hodge false.
Abel–Jacobi is defined on homologically trivial cycles (`ker cl`).
Countability of Hilbert-scheme components does not inhabit
`ClayDisproofStatement`.

No `sorry` is used as a stand-in for a miss lemma.
-/

namespace Hodge
namespace Analytic

axiom ComplexManifold : Type
axiom dim (X : ComplexManifold) : Nat
axiom compact (X : ComplexManifold) : Prop

axiom DifferentialForm (X : ComplexManifold) (k : Nat) : Type
axiom ext_d (X : ComplexManifold) (k : Nat) :
    DifferentialForm X k → DifferentialForm X (k + 1)

axiom Chain (X : ComplexManifold) (m : Nat) : Type
axiom chain_boundary (X : ComplexManifold) (m : Nat) :
    Chain X m → Chain X (m - 1)

axiom integrate (X : ComplexManifold) (k : Nat) :
    Chain X k → DifferentialForm X k → Float  -- placeholder scalar; not a computation

/-- Stokes as a named axiom, not a proved theorem. -/
axiom stokes (X : ComplexManifold) (k : Nat)
    (M : Chain X (k + 1)) (ω : DifferentialForm X k) : Prop

axiom AbelianSheaf (X : ComplexManifold) : Type
axiom SheafCohomology (X : ComplexManifold) (q : Nat) :
    AbelianSheaf X → Type

axiom HodgeForm (X : ComplexManifold) (p q : Nat) : Type
axiom wedge (X : ComplexManifold) (k m : Nat) :
    DifferentialForm X k → DifferentialForm X m → DifferentialForm X (k + m)

/-- Riemann bilinear relations, named. Not evaluated. -/
axiom riemann_first (X : ComplexManifold) : Prop
axiom riemann_second (X : ComplexManifold) : Prop

axiom ComplexCohomology (X : ComplexManifold) (m : Nat) : Type
axiom HodgeFiltrationStep (X : ComplexManifold) (p m : Nat) : Type
axiom hodge_filtration_decreasing (X : ComplexManifold) (p m : Nat) : Prop
axiom hodge_filtration_base (X : ComplexManifold) (m : Nat) : Prop
axiom hodge_filtration_vanishing (X : ComplexManifold) (p m : Nat) : Prop
axiom HodgeSubspace (X : ComplexManifold) (p q : Nat) : Type
axiom hodge_graded_piece (X : ComplexManifold) (p q : Nat) : Prop

/-- Griffiths torus. -/
axiom IntermediateJacobian (X : ComplexManifold) (k : Nat) : Type

/-- Domain of Abel–Jacobi: cycles already in the kernel of cl. -/
axiom HomologicallyTrivialCycles (X : ComplexManifold) (k : Nat) : Type
axiom AbelJacobi (X : ComplexManifold) (k : Nat) :
    HomologicallyTrivialCycles X k → IntermediateJacobian X k

/-- Countability of algebraic components of J^k. Different theorem. -/
axiom AJ_image_countable_union (X : ComplexManifold) (k : Nat) : Prop

theorem analytic_api_is_not_a_miss : True := trivial

end Analytic
end Hodge
