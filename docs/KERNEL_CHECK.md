# Kernel check versus Clay congruence

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**License:** Apache-2.0
**Clay status:** open

The Hodge conjecture is a Π-sentence over smooth complex projective varieties:

```
∀ X, ∀ γ ∈ Hdg(X), ∃ z, cl_X(z) = γ
```

A disproof would be a geometric Σ-pack: a named smooth complex projective
variety `X`, a rational Hodge class `γ`, and a closed lemma that geometric
`cl_X` misses `γ`.

In `BenFrohman/HODGE` and this schema repo, the term

```
⟨D_bad, γ_bad, λ z h_cl => false_of_bad_cl h_cl⟩
```

does not achieve congruence with the Clay statement. The kernel certifies
consistency relative to the definitions supplied. On `zeroCycle`, `cl`
unfolds to the zero linear map and `γ_bad = 1`. The equation reduces by
δ-unfolding to `0 = 1`, closed by `zero_ne_one`.

Open arithmetic such as `z.deg * 2 = 5` does not reduce by `decide`
(`decide` needs closed numerals). It is linear integer arithmetic (`omega`).

No named geometric host `X` with a geometric cycle-class map missing a
Hodge class is present. The Hodge conjecture remains open.

## Host comparison

| Host | Definition of `cl` | Normal form of `cl z` | Goal `cl z = γ` | Tactic | Status |
| --- | --- | --- | --- | --- | --- |
| `zeroCycle` | `0` | `0` | `0 = 1` | `exact zero_ne_one` | gadget |
| even/odd model | `z → 2 · deg(z)` | `z.deg * 2` | `z.deg * 2 = 5` | `omega` | gadget; `decide` fails |
| `ℝ^4` | `LinearMap.id` | `z` | `z = γ` | `rfl` | Hodge holds in the encoding |
| Klein `Q^4` | `id` | `z` | `z = γ` | `rfl` | Hodge holds in the encoding |
| `ℝ^2 × ℝ^2` | `id` | `z` | `z = γ` | `rfl` | Hodge holds in the encoding |
| geometric host | `CH^k(X)_ℚ → H^{2k}(X,ℚ)` | not a numeral | `cl_X z = γ` | not `rfl` / not `decide` | missing |

## Three primitives still required for a Clay close

1. A named nonsingular complex projective variety `X`, given by equations
   in `ℝ^n` (or an equivalent construction), with a nonsingularity proof.
2. A named class `γ ∈ H^{2k}(X,ℚ) ∩ H^{k,k}(X)`.
3. A proof that geometric `cl_X` misses `γ`. That proof cannot reduce to a
   numeral identity and cannot be discharged by `rfl` or `decide`.
