import Lake
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
