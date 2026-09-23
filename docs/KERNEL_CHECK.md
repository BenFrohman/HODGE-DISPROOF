# Kernel check versus Clay Hodge

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0

The Hodge conjecture is a Π-sentence over smooth complex projective varieties:

```
∀ X, ∀ γ ∈ Hdg(X), ∃ z, cl_X(z) = γ
```

A disproof would require a geometric Σ-tuple: a concrete smooth complex
projective variety `X`, a rational Hodge class `γ`, and a closed lemma
proving non-algebraicity.

In `BenFrohman/HODGE` and this repository, checking the term

```
⟨D_bad, γ_bad, λ z h_cl => false_of_bad_cl h_cl⟩
```

does not achieve congruence with the Clay statement. The kernel certifies
consistency relative to the definitions provided. On the host `zeroCycle`,
`cl` unfolds to the zero linear map and `γ_bad = 1`. The kernel equation
reduces by δ-unfolding to `0 = 1`, closed by `zero_ne_one`.

Open arithmetic terms like `z.deg * 2 = 5` do not reduce via `decide`
(which requires closed numerals). They are closed by linear integer
arithmetic (`omega`). That is a parity gadget, not Hodge.

No named geometric host `X` with a geometric cycle-class map missing a
Hodge class is present. The Hodge conjecture remains **open**.

## Reduction table

| Host / model | Definition of `cl` | Normal form of `cl z` | Goal `cl z = γ` | Tactic | Status |
|---|---|---|---|---|---|
| `zeroCycle` | `0` | `0` | `0 = 1` | `exact zero_ne_one` | local gadget |
| even/odd model | `z ↦ 2 · deg(z)` | `z.deg * 2` | `z.deg * 2 = 5` | `omega` | free variable; `decide` fails |
| `ℙ^4`, Klein `Q^4`, `ℙ²×ℙ²` | `LinearMap.id` | `z` | `z = γ` | `rfl` | inhabits Hodge in the encoding |
| geometric host | `CH^k(X)_ℚ → H^{2k}(X,ℚ)` | not a numeral | `cl_X z = γ` | not `rfl` / not `decide` | missing |

## Three missing primitives for a genuine disproof

1. A named nonsingular complex projective variety `X`, given by equations
   (or an equivalent construction), with a non-singularity argument.
2. A named class `γ ∈ H^{2k}(X,ℚ) ∩ H^{k,k}(X)`.
3. A proof that the *geometric* map `cl_X` misses `γ`. That proof cannot
   reduce to a numeral identity and cannot be evaluated by `rfl` or `decide`.
