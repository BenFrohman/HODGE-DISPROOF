/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Letter lock

Clay coefficients are `Q`.
The ledger letter `Z` is a cokernel dimension, not `ℤ`.
`F` is the host polynomial. `H` is cohomology. `C` is data or `ℂ`.

This file does not inhabit a miss term.
-/

namespace Hodge
namespace Lexicon

/-- Clay coefficient field, as a name. Not a computation. -/
def clayCoefficientRing : String := "Q"

theorem clayCoefficientRing_is_Q : clayCoefficientRing = "Q" := rfl

/-- Ledger letter Z means the rational cokernel, not the integers. -/
def ledgerZMeans : String :=
  "dim_Q (Hdg^2 / (im(cl) ∩ Hdg^2)), uncomputed on V(F)"

theorem ledgerZ_not_integers : ledgerZMeans ≠ "Z" := by native_decide

/-- Host polynomial name. -/
def hostPolynomialName : String := "F"

theorem hostPolynomialName_is_F : hostPolynomialName = "F" := rfl

/-- Status line. -/
theorem lexicon_records_open_state : True := trivial

end Lexicon
end Hodge
