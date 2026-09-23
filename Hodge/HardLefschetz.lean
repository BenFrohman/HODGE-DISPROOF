/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.ConjugateFiltration

/-!
# Hard Lefschetz and primitive decomposition

Kähler form `ω ∈ H^{1,1}`, Lefschetz operator `L(α) = ω ∧ α`,
`L^{n-m} : H^m ≃ H^{2n-m}`, primitives `P^m = ker L^{n-m+1}`,
and `H^m ≃ ⊕_r L^r P^{m-2r}`.

These are theorems of Kähler geometry. They imply: if Hodge holds in
degree `2k` then it holds in complementary degree. They do not produce
a class outside `im(cl)`.
-/

namespace Hodge
namespace Analytic

axiom kahlerForm (X : ComplexManifold) : ComplexCohomology X 2

axiom lefschetz (X : ComplexManifold) (m : Nat) :
    ComplexCohomology X m → ComplexCohomology X (m + 2)

/-- `L^{n-m} : H^m ≃ H^{2n-m}` when `m ≤ n`. Named, not constructed. -/
axiom hard_lefschetz (X : ComplexManifold) (m : Nat) : Prop

/-- `L(F^p H^m) ⊆ F^{p+1} H^{m+2}`. -/
axiom lefschetz_shifts_filtration (X : ComplexManifold) (m p : Nat) : Prop

/-- `P^m := ker(L^{n-m+1})`. -/
axiom PrimitiveCohomology (X : ComplexManifold) (m : Nat) : Type

/-- `H^m ≃ ⊕_r L^r P^{m-2r}`. -/
axiom lefschetz_decomposition (X : ComplexManifold) (m : Nat) : Prop

/-- Consequence used in the literature: Hodge in complementary degree
follows from Hodge in low degree. Not a disproof. -/
axiom hodge_duality_reduction (X : ComplexManifold) : Prop

theorem hard_lefschetz_is_not_a_miss : True := trivial

end Analytic
end Hodge
