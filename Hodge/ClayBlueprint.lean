/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Axiomatic blueprint of the Clay sentence

Geometric placeholders. Not constructions. Not a disproof.

Do **not** add a global axiom
`false_of_geometric_miss : geometric_cl z = γ → False`.
That axiom would assert that *no* Hodge class is algebraic, on every host,
and would inhabit the Σ-sentence by fiat. It is unsound.
-/

namespace Hodge
namespace ClayBlueprint

axiom ComplexProjectiveVariety : Type
axiom IsSmooth (X : ComplexProjectiveVariety) : Prop

/-- Z: rational Chow group `CH^k(X)_Q`. -/
axiom RationalChowGroup (X : ComplexProjectiveVariety) (k : Nat) : Type

/-- V: rational singular cohomology `H^{2k}(X, Q)`. -/
axiom RationalCohomology (X : ComplexProjectiveVariety) (k : Nat) : Type

axiom IsHodgeClass {X : ComplexProjectiveVariety} {k : Nat}
    (gamma : RationalCohomology X k) : Prop

/-- Geometric cycle-class map. Opaque. Does not reduce to 0 or id. -/
axiom geometric_cl (X : ComplexProjectiveVariety) (k : Nat) :
    RationalChowGroup X k → RationalCohomology X k

/-- Algebraic classes are Hodge (the easy direction). -/
axiom geometric_cl_is_hodge (X : ComplexProjectiveVariety) (k : Nat)
    (z : RationalChowGroup X k) :
    IsHodgeClass (geometric_cl X k z)

/-- Clay Π-sentence on one smooth host. -/
def ClayHodge (X : ComplexProjectiveVariety) (hX : IsSmooth X) (k : Nat) : Prop :=
  ∀ gamma : RationalCohomology X k,
    IsHodgeClass gamma → ∃ z : RationalChowGroup X k, geometric_cl X k z = gamma

/-- Geometric Σ-sentence. Uninhabited. -/
def ClayDisproofStatement : Prop :=
  ∃ (X : ComplexProjectiveVariety) (_hX : IsSmooth X) (k : Nat)
    (gamma : RationalCohomology X k),
      IsHodgeClass gamma ∧
        ∀ z : RationalChowGroup X k, geometric_cl X k z = gamma → False

/-- There is no constructor. A future term would have to supply X, smoothness,
a Hodge class, and a host-specific miss lemma — not a global axiom of False. -/
theorem ClayDisproofStatement_unfilled : True := trivial

/-- `zeroCycle` cannot be passed here: it is not a `ComplexProjectiveVariety`. -/
theorem gadget_does_not_unify : True := trivial

end ClayBlueprint
end Hodge
