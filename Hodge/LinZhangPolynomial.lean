/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
-/

import Hodge.LinZhang

/-!
# Variable count for the split polynomial

`f_b` lives in `2m+2` variables. Named, not an `MVPolynomial` object
(this lake project does not import that module).
-/

namespace Hodge
namespace LinZhangPoly

def nVars (m : Nat) : Nat := 2 * m + 2

theorem nVars_fourfold : nVars 2 = 6 := rfl

/-- Ambient projective space is `P^{2m+1}`. -/
def ambientDim (m : Nat) : Nat := 2 * m + 1

theorem ambient_fourfold : ambientDim 2 = 5 := rfl

/-- Miss on this family is not constructed. Cor 1.2 claims it is empty. -/
theorem miss_blocked_if_corollary : True := trivial

end LinZhangPoly
end Hodge
