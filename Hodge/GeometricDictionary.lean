/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Geometric dictionary for the Datum fields

Replace the mock modules by Clay-shaped names:

* `Z`  ← `CH^k(X)_Q`
* `V`  ← `H^{2k}(X, Q)`
* `N`  ← off-diagonal Hodge summands
* `cl` ← geometric cycle-class map

These are opaque placeholders. Mathlib 4.22 does not implement them.
No inhabitant of a geometric disproof is supplied.
-/

namespace Hodge
namespace GeometricDictionary

/-- Nonsingular complex projective variety. Not constructed. -/
opaque Variety : Type

/-- Rational Chow group of codimension `k`. Replaces mock `Z`. -/
opaque Chow (X : Variety) (k : Nat) : Type

/-- Rational Betti cohomology `H^{2k}(X, Q)`. Replaces mock `V`. -/
opaque Betti (X : Variety) (k : Nat) : Type

/-- Off-diagonal Hodge pieces. Replaces mock `N`. -/
opaque OffDiagonal (X : Variety) (k : Nat) : Type

/-- Geometric cycle-class map. Replaces mock `D.cl`. -/
opaque cl (X : Variety) (k : Nat) : Chow X k → Betti X k

/-- Projection off `H^{k,k}`. Replaces mock `D.obstruction`. -/
opaque obstruction (X : Variety) (k : Nat) : Betti X k → OffDiagonal X k

/-- Hodge classes `H^{2k}(X,Q) ∩ H^{k,k}(X)`. -/
opaque isHodgeClass (X : Variety) (k : Nat) : Betti X k → Prop

/-- Clay Hodge on one host: every Hodge class is algebraic. -/
def ClayHodge (X : Variety) (k : Nat) : Prop :=
  ∀ γ : Betti X k, isHodgeClass X k γ → ∃ z : Chow X k, cl X k z = γ

/-- Geometric Σ-sentence. Uninhabited here. -/
def ClayDisproofStatement : Prop :=
  ∃ (X : Variety) (k : Nat) (γ : Betti X k),
    isHodgeClass X k γ ∧ ∀ z : Chow X k, cl X k z = γ → False

theorem dictionary_is_the_statement : True := trivial

end GeometricDictionary
end Hodge
