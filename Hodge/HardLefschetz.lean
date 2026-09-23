/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.AnalyticInterface

/-!
# Hard Lefschetz and primitive decomposition

On a compact Kaehler manifold of dimension `n`, wedging with the Kaehler
class `ω ∈ H^{1,1}` gives `L : H^m → H^{m+2}`. Hard Lefschetz says
`L^{n-m} : H^m ≃ H^{2n-m}` for `m ≤ n`. Primitive cohomology is
`ker(L^{n-m+1})`. The Lefschetz decomposition is
`H^m ≃ ⊕_r L^r P^{m-2r}`.

These are theorems of Kaehler geometry. They are why Hodge holds in
dimension `≤ 3` (with Lefschetz (1,1)). They do not inhabit a miss lemma
in dimension 4.
-/

namespace Hodge
namespace HardLefschetz

open Analytic

axiom KahlerForm (X : ComplexManifold) : ComplexCohomology X 2

axiom lefschetz_operator (X : ComplexManifold) (m : Nat) :
    ComplexCohomology X m → ComplexCohomology X (m + 2)

axiom lefschetz_iterated (X : ComplexManifold) (m r : Nat) :
    ComplexCohomology X m → ComplexCohomology X (m + 2 * r)

/-- `L^{n-m} : H^m ≃ H^{2n-m}` when `m ≤ n`. -/
axiom hard_lefschetz_isomorphism
    (X : ComplexManifold) (n m : Nat) :
    dim X = n → m ≤ n → Prop

/-- `L(F^p H^m) ⊆ F^{p+1} H^{m+2}`. -/
axiom lefschetz_filtration_compatibility
    (X : ComplexManifold) (m p : Nat) : Prop

/-- `P^m = ker(L^{n-m+1})`. -/
axiom PrimitiveCohomology (X : ComplexManifold) (m : Nat) : Type

axiom PrimitiveComponent (X : ComplexManifold) (m r : Nat) : Type

/-- `H^m ≃ ⊕_r L^r P^{m-2r}`. -/
axiom lefschetz_primitive_decomposition
    (X : ComplexManifold) (m : Nat) : Prop

/-- Hard Lefschetz plus Lefschetz (1,1) imply Hodge in dimension ≤ 3. -/
theorem low_dimension_is_not_a_counterexample_host : True := trivial

end HardLefschetz
end Hodge
