# Authors

**Benjamin Stanley Frohman** (@BenFrohman) is the sole author of this repository:
Lean sources under `Hodge/`, documentation under `docs/`, Clay tag, and release notes.

Copyright (c) 2026 Benjamin Stanley Frohman.
License: Apache License 2.0 (see `LICENSE` and `NOTICE.md`).
Copies and derivatives must keep that notice and attribution.

X: [@Investor0x](https://x.com/Investor0x)
GitHub: [@BenFrohman](https://github.com/BenFrohman)

This encoding is independent of whether the Hodge conjecture is discharged.
It is not discharged. Cite as a schema, not as a Clay disproof.

## Frohman encoding (this repo)

- `Datum`, `HodgeConjecture` (copied interface from BenFrohman/HODGE)
- `HodgeDisproof` — the triple `(D_bad, γ_bad, no_cycle)` plus `γ_isHodge`
- `zeroCycle` / `zeroCycleDisproof` — linear-algebra sentinel, not a variety

## Shoulders (not Frohman theorems)

- W. V. D. Hodge — the conjecture
- M. F. Atiyah, F. Hirzebruch — integral counterexamples
- J. Kollár — integral counterexamples without torsion
- C. Voisin — Kähler counterexamples; surveys
- Lean 4 and mathlib4 (Apache-2.0; see `NOTICE.md`)
