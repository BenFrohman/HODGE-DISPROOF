# Clay tag

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Copyright (c) 2026 Benjamin Stanley Frohman.
Date: 23 September 2026.

Pins (do not float):

    lean-toolchain = leanprover/lean4:v4.22.0
    mathlib        = v4.22.0   # not master

Git names for this snapshot:

    clay-statement-open
    v1.0.0-schema

This marks the Lean *type* of a Hodge counterexample term in this
repository: the triple

    (D_bad, γ_bad, ∀ z, cl z = γ_bad → False)

plus `γ_bad ∈ D_bad.hodgeClasses`.

Clay status for the rational Hodge conjecture on smooth complex
projective varieties: **open**.

It does not mark a proof.
It does not mark a geometric counterexample.
`zeroCycleDisproof` inhabits the type on a linear-algebra sentinel only.

Sister tag in BenFrohman/HODGE: `clay-statement-open` / `v1.0.0-guarded`.
