/-
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Axiom report. Run: `lake env lean InterfaceAxiomAudit.lean`.
Prints `#print axioms`-equivalent output for every theorem in the selected `Hodge.InterfaceObstructions` module
and fails if any declaration there depends on an axiom other than
propext, Classical.choice, Quot.sound (for example `sorryAx`).
-/
import Lean
import Hodge.InterfaceObstructions

open Lean Elab Command

#eval show CommandElabM Unit from do
  let env ← getEnv
  let required : List Name := [
    ``Hodge.InterfaceObstructions.labelledP4_has_abstract_miss,
    ``Hodge.InterfaceObstructions.abstractClayDisproof_interface_inhabited,
    ``Hodge.InterfaceObstructions.rational_two_mul_surjective,
    ``Hodge.InterfaceObstructions.cycle_map_ne_zero_of_nonzero_class,
    ``Hodge.InterfaceObstructions.rational_cycle_map_surjective_of_nonzero_class]
  for n in required do
    unless env.contains n do throwError m!"Missing interface regression: {n}"
  let allowed : List Name := [``propext, ``Classical.choice, ``Quot.sound]
  let mut rows : Array String := #[]
  let mut bad : Array String := #[]
  let mut nDecl := 0
  for (n, ci) in env.constants.toList do
    let some idx := env.getModuleIdxFor? n | continue
    let mod := env.header.moduleNames[idx.toNat]!
    unless (`Hodge.InterfaceObstructions).isPrefixOf mod do continue
    if n.isInternal then continue
    nDecl := nDecl + 1
    let axs ← liftCoreM (Lean.collectAxioms n)
    for a in axs do
      unless allowed.contains a do bad := bad.push s!"{n} uses {a}"
    if ci matches .thmInfo _ then
      let ax := ", ".intercalate ((axs.toList.map toString).toArray.qsort (· < ·)).toList
      rows := rows.push s!"AXROW | `{n}` | `{mod}` | {if ax.isEmpty then "(none)" else ax} |"
  for r in rows.qsort (· < ·) do
    logInfo r
  logInfo s!"AXSUMMARY {rows.size} theorems, {nDecl} declarations in Hodge.InterfaceObstructions; nonstandard: {bad.size}"
  unless bad.isEmpty do
    throwError m!"AxiomReport FAIL:\n{"\n".intercalate bad.toList}"
