# Even/odd gadget (Fermat label)

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Date: 23 September 2026.

File: `Hodge/EvenOddGadget.lean`.

This file records the *shape* of a host-specific miss lemma:

```
⟨X_hypersurface, γ_odd, λ z h => false_of_bad_cl_on_X h⟩
```

What the kernel checks: `2n ≠ 5`, closed by `omega`.

What it does not check:

* The string `x0^6+⋯+x5^6=0` is not a scheme and carries no Jacobian proof.
* `cl_geometric` is `z → 2z` on `ℤ`, not `cl_X`.
* Shioda proved that the Fermat sextic fourfold satisfies the **rational**
  Hodge conjecture. Braun–Fortin–López–Villaflor (2024) give an explicit
  basis of 1751 primitive algebraic cycles spanning `H^{2,2} ∩ H^4(-,Q)`.
  That host is the wrong direction for a counterexample.
* `verified_parity_gadget` does not inhabit `ClayDisproofStatement`.

Same species as `zeroCycle` (`0=1`). Quarantined. Clay status: **open**.
