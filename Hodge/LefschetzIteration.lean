/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
-/

import Mathlib.Tactic.Omega
import Hodge.HardLefschetz

/-!
# Iteration indices for L^r

The compiler treats `H m` and `H (m + 2 * r)` as distinct types.
Composing `L : H^k → H^{k+2}` therefore needs an index identity

```
m + 2 * r + 2 = m + 2 * (r + 1)
```

The primitive sum is indexed by `Fin (m / 2 + 1)` so that `m - 2r ≥ 0`.
These are type-index facts. They do not construct L over ℂ and they
do not inhabit a Clay miss.
-/

namespace Hodge
namespace LefschetzIteration

/-- Definitional step used when composing L with L^r. -/
lemma lefschetz_degree_step (m r : Nat) :
    m + 2 * r + 2 = m + 2 * (r + 1) := by
  omega

lemma lefschetz_degree_zero (m : Nat) :
    m + 2 * 0 = m := by
  omega

/-- Bound on r so that m - 2r stays a Nat. -/
def primitiveSumBound (m : Nat) : Nat := m / 2 + 1

/-- Named iterated map. Not a LinearMap construction. -/
axiom lefschetz_operator_pow
    (X : Analytic.ComplexManifold) (m r : Nat) :
    Analytic.ComplexCohomology X m → Analytic.ComplexCohomology X (m + 2 * r)

/-- Primitive sum indexed by Fin (m/2 + 1). Named, not constructed. -/
axiom lefschetz_primitive_decomposition_fin
    (X : Analytic.ComplexManifold) (m : Nat) : Prop

theorem iteration_is_not_a_miss : True := trivial

end LefschetzIteration
end Hodge
