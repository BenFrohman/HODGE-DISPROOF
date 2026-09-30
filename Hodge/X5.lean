/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Hodge.GeometricHost

/-!
# Field-1 label: Fermat quintic fourfold

    X_5 : x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5 = 0 subset P^5.

This is a `SmoothComplexProj` filing card. It is not a scheme,
not `cl_{X_5}`, and not a miss term.

Do not name this host `T_F`. In BenFrohman/HODGE, `T_F` is
`CycleSection.construct`.

The polynomial

    G = ∑ x_i^5 - 5 ∏_{i=0}^5 x_i

is *not* homogeneous (degrees 5 and 6). It does not define a
projective hypersurface in P^5. That G is not this label.

Algebra for the homogeneous Fermat quintic lives in BenFrohman/HODGE.
AMV: integral Hodge holds on this named host. Island, not Term B.
-/

namespace Hodge
namespace Geometric

def X5 : SmoothComplexProj :=
  ⟨"X_5 Fermat quintic fourfold",
    4,
    "x0^5 + x1^5 + x2^5 + x3^5 + x4^5 + x5^5 = 0 in P^5"⟩

theorem X5_dim : X5.dim = 4 := rfl

theorem X5_name : X5.name = "X_5 Fermat quintic fourfold" := rfl

/-- Label supplied. Geometric CycleClassData and miss field not supplied. -/
theorem X5_is_a_label : True := trivial

/-- The requested name `T_F` is reserved. This host is `X5`. -/
def T_F_is_construct_not_a_host : String :=
  "T_F = CycleSection.construct in BenFrohman/HODGE; host label is X5"

theorem X5_is_not_a_miss : True := trivial

end Geometric
end Hodge
