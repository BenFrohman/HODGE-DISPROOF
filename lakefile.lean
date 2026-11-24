/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

import Lake

/-!
# lakefile

Machine-checked Lean 4 module.
-/

open Lake DSL

package HodgeInterfaceObstructions

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.22.0"

-- Only the selected Mathlib-backed regression and its import closure.
-- The legacy repository as a whole is not claimed to build.
@[default_target]
lean_lib Hodge where
  roots := #[`Hodge.Basic, `Hodge.Disproof, `Hodge.GeometricHost,
    `Hodge.InterfaceObstructions]
