/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.GeometricHost

/-!
# Field-1 label for the Fermat quintic fourfold

    X_5 = V(x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5) ⊂ P^5

This is a `SmoothComplexProj` filing card. It is not a scheme,
not `cl_{X_5}`, and not a miss term.

Do not use the name `T_F` for this host: that name is already
`CycleSection.construct` in BenFrohman/HODGE.

The non-homogeneous expression `∑ x_i^5 - 5 ∏ x_i` is not this host
and is not a projective hypersurface in `P^5`.

Algebra for `G` and the Jacobian lives in BenFrohman/HODGE,
`Hodge/FermatQuintic.lean`. AMV: Hodge holds on this named host.
-/

namespace Hodge
namespace Geometric

def X5 : SmoothComplexProj :=
  ⟨"X_5", 4,
    "G = x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5 in P^5"⟩

theorem X5_dim : X5.dim = 4 := rfl

theorem X5_name : X5.name = "X_5" := rfl

/-- Label supplied. Geometric CycleClassData and miss field not supplied. -/
theorem X5_is_a_label : True := trivial

/-- Illegal product host is not registered. -/
def illegalProductPresentation : String :=
  "sum x_i^5 - 5 prod x_i  (degrees 5 and 6; not projective in P^5)"

theorem X5_is_not_the_illegal_product :
    X5.presentation ≠ illegalProductPresentation := by native_decide

end Geometric
end Hodge
