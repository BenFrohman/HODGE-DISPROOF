/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
-/

import Hodge.ClayBlueprint

/-!
# Period / Abel-Jacobi interface

Names only. No period matrix is computed. No miss lemma is proved.
Abel-Jacobi is not the Hodge cycle-class map.
Noether-Lefschetz is not a disproof of Hodge.
-/

namespace Hodge
namespace Periods

open ClayBlueprint

/-- Betti period matrix of a class against a homology basis. -/
axiom PeriodMatrix (X : ComplexProjectiveVariety) (k : Nat) : Type

axiom periods (X : ComplexProjectiveVariety) (k : Nat) :
    RationalCohomology X k → PeriodMatrix X k

/-- Griffiths Abel-Jacobi on homologically trivial cycles. Wrong map for Hodge. -/
axiom IntermediateJacobian (X : ComplexProjectiveVariety) (k : Nat) : Type

axiom AbelJacobi (X : ComplexProjectiveVariety) (k : Nat) : Type

/-- Documentation: NL shrinks extra Hodge classes on a very general host. -/
def NoetherLefschetzShrinksHodge : True := trivial

/-- No period computation in this file inhabits ClayDisproofStatement. -/
theorem no_period_miss : True := trivial

end Periods
end Hodge
