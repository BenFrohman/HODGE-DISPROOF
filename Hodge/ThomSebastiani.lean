/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
-/

import Hodge.LinZhang

/-!
# Thom–Sebastiani names (Lin–Zhang literature)

Rank-one factorizations `L_r = (ℓ_r, h_r)` and tensors
`E_I = L_0 ⊔ ⋯ ⊔ L_m` are how Lin–Zhang generate algebraic classes
on their split family. Named here. Not constructed. Not a miss.
-/

namespace Hodge
namespace ThomSebastiani

structure RankOneFactorization where
  d : Nat

/-- Named tensor of rank-one blocks. Not an object of MF_gr. -/
axiom thom_sebastiani_tensor
    (P : LinZhang.SplitParams)
    (blocks : Fin (P.m + 1) → RankOneFactorization) : True

/-- On the Lin–Zhang family the paper claims these classes exhaust Hdg. -/
theorem claimed_exhaustion_is_not_a_miss : True := trivial

/-- Territory outside that family: still the uninhabited fourfold miss. -/
theorem outside_family_still_open : True := trivial

end ThomSebastiani
end Hodge
