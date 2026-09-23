# Geometric replacement of the Datum fields

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Date: 23 September 2026.

The disproof of Hodge is the Σ-sentence

```
∃ X, ∃ γ ∈ Hdg(X), ∀ z, cl_X(z) = γ → False
```

A term is a triple `⟨X_bad, γ_bad, false_of_bad_cl⟩`.
Clay congruence requires the *fields* of `Datum` to be geometric, not
abstract modules.

## Dictionary

| Mock field on `Datum` | Geometric replacement |
|---|---|
| `Z` | `CH^k(X)_Q` — rational Chow group of codimension-k cycles |
| `V` | `H^{2k}(X, Q)` — rational singular / Betti cohomology |
| `N` | off-diagonal Hodge pieces (complement of `H^{k,k}` in `H^{2k}(X,C)`) |
| `D.cl : Z →ₗ V` | `cl_X : CH^k(X)_Q → H^{2k}(X, Q)` |
| `D.obstruction : V →ₗ N` | projection off `H^{k,k}` |
| `D.hodgeClasses` | `H^{2k}(X, Q) ∩ H^{k,k}(X)` |
| `D` | a named nonsingular complex projective variety `X` |

`X` itself is not a module. It is a space cut out by homogeneous polynomials
in some `P^n`, with a Jacobian-rank proof of nonsingularity.

## What this change does and does not do

Changing the *names* of `Z`, `V`, `N`, and `cl` to the geometric dictionary
is the Clay statement. It is not a disproof.

Mathlib 4.22 does not construct:

- schemes / projective varieties over `C`,
- Chow groups,
- Hodge decomposition of singular cohomology over `C`,
- the cycle-class map `CH^k(X)_Q → H^{2k}(X, Q)`.

`Hodge/GeometricHost.lean` and `Hodge/ClaySpec.lean` record those names as
an interface. `ClayDisproofTerm` has no constructor.

The gadget `zeroCycle` (`Z = V = N = Q`, `cl = 0`) stays quarantined as a
linear-algebra sentinel. It is not the replacement.

## Still missing for a true term

1. equations for a named fourfold `X_bad`;
2. a named class `γ_bad ∈ H^{2k}(X,Q) ∩ H^{k,k}(X)`;
3. a proof that geometric `cl_X` misses `γ_bad`.

None of those three objects is supplied. Clay status: **open**.
