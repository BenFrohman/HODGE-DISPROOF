# Trichotomy

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Date: 23 September 2026.

Three different statements. Do not collapse them.

## 1. Hodge (what Clay would pay to prove)

For every smooth complex projective variety `X` and every Hodge class
`γ`, there exist algebraic cycles whose rational classes sum to `γ`.

Quantifiers: `∀ X, ∀ γ, ∃ z`.

## 2. A counterexample (what Clay would pay for a disproof)

One named smooth projective variety `X`, one named Hodge class `γ`,
and a proof that no algebraic cycle combination equals `γ`.

Quantifiers: `∃ X, ∃ γ, ∀ z`.

## 3. What this repository has

The Lean *type* of (2), plus a geometric API of structures:

- `SmoothComplexManifold` — carrier and dimension
- `HodgeTheory` — `H^•`, `F^•`, conjugation, graded pieces
- `PolarizedKaehlerStructure` — `L`, Hard Lefschetz, primitives
- `TranscendentalChowSystem` — `CH^•` and the easy arrow
- `ClayHodgeConjectureDisproof` — an uninhabited `∃`

The only closed inhabitant is the linear-algebra sentinel `zeroCycle`.
That inhabitant is not (1) and is not a geometric (2).

There is no constructor for `ClayHodgeConjectureDisproof`.
Sealing the API means the field list is complete. It does not mean the
`∃` is filled.

Clay status for Hodge remains **open**.
