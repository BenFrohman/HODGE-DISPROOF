/-
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Author: Benjamin Stanley Frohman (@BenFrohman).

Standalone record of Term B fields on the locked host.
Field 1 is named. The written Field-2 classes fail Field 3.
No miss term is constructed.
-/

namespace Hodge.Fields123

/-- Formal tags for the three written classes on V(F). -/
inductive WrittenClass where
  | h2
  | Pi
  | S
deriving DecidableEq, Repr

/-- [S] = h² - [Π] as a tag equation. -/
def S_is_difference : WrittenClass := WrittenClass.S

theorem S_tagged : S_is_difference = WrittenClass.S := rfl

/-- Every written class is declared algebraic on this host. -/
def hitsImage : WrittenClass → Bool
  | WrittenClass.h2 => true
  | WrittenClass.Pi => true
  | WrittenClass.S  => true

theorem all_written_hit (c : WrittenClass) : hitsImage c = true := by
  cases c <;> rfl

/-- Field 3 for a written class would require hitsImage = false. -/
def field3_holds (c : WrittenClass) : Prop := hitsImage c = false

theorem no_written_field3 (c : WrittenClass) : ¬ field3_holds c := by
  cases c <;> decide

/--
Term B needs some other named class, not in this three-element list.
That class is not constructed in this file.
-/
def field1_named : String := "X = V(F) subset P^5"

theorem field1_string : field1_named.length = 22 := by native_decide

end Hodge.Fields123
