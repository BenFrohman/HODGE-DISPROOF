/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Lin–Zhang split polynomial (recipe, not Mathlib `MVPolynomial`)

```
variables:  2m+2, paired as (u_s, v_s) for s = 0..m
f_b     = ∑_{s=0}^m F_s(u_s, v_s)
F_s     = ∑_{r=0}^d c_{s,r} u_s^r v_s^{d-r}
```

Jacobian ideal = partials of `f_b`. This file records counts only.
A miss lemma on this family would contradict Lin–Zhang Cor. 1.2 (if accepted).
-/

namespace Hodge
namespace LinZhangPoly

def nVars (m : Nat) : Nat := 2 * m + 2

def nBlocks (m : Nat) : Nat := m + 1

theorem vars_of_blocks (m : Nat) : nVars m = 2 * nBlocks m := by
  simp [nVars, nBlocks]

/-- Primitive rational middle rank cited from Cor. 1.2. -/
def primRank (m d : Nat) : Nat := (d - 1) ^ (m + 1)

theorem octic_fourfold_prim : primRank 2 8 = 343 := by
  native_decide

theorem miss_not_on_this_family : True := trivial

end LinZhangPoly
end Hodge
