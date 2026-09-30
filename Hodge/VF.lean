/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.GeometricHost

/-!
# Field-1 label for the chain sextic

This is a `SmoothComplexProj` filing card. It is not a scheme,
not `cl_V(F)`, and not a miss term.

Algebra for `F` and the two planes lives in BenFrohman/HODGE,
`Hodge/SpecialSextic.lean`.
-/

namespace Hodge
namespace Geometric

def VF : SmoothComplexProj :=
  ⟨"V(F)", 4,
    "F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6 in P^5"⟩

theorem VF_dim : VF.dim = 4 := rfl

theorem VF_name : VF.name = "V(F)" := rfl

/-- Label supplied. Geometric CycleClassData and miss field not supplied. -/
theorem VF_is_a_label : True := trivial

end Geometric
end Hodge
