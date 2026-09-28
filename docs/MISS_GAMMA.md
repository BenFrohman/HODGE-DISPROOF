# Official miss function

**Author:** Benjamin Stanley Frohman  
**Copyright:** © 2026 Benjamin Stanley Frohman  
**License:** Apache-2.0  
**Status:** definition + closed negative theorems. Field 3 of CE uninhabited.

---

## 0. Leftover space

After Lefschetz (1,1) and Hard Lefschetz, Hodge on a smooth complex
projective fourfold reduces to primitive rational classes of type (2,2):

```
P⁴(X, ℚ) ∩ H^{2,2}(X).
```

Hodge decomposition is granted and stops there. It does not write a miss.

---

## 1. Official definition of the miss

Fix a smooth projective fourfold X and a class

```
γ ∈ P⁴(X, ℚ) ∩ H^{2,2}(X).
```

The miss is the function

```
miss_γ :  ∀ z ∈ CH²(X)_ℚ,  cl_X(z) = γ  →  False.
```

Unfolded over finite rational combinations of surfaces:

```
miss_γ :
  ∀ (Zs : Finset (Surface X)) (a : Zs → ℚ),
    γ ≠ ∑_{z ∈ Zs} a z • cl_X(z).
```

This is field 3 of CE / ClayDisproofTerm. It is not Δ_Hdg.
Δ_Hdg ≠ 0 only says an extra Hodge class can exist.
IVHS can certify type (2,2). Neither writes miss_γ.

Lean shape (not an inhabitant):

```lean
false_of_geometric_miss :
  ∀ z : C.CH, C.cl z = γ_Hdg → False
```

---

## 2. Real fill-ins on V(F)

Dummy gadgets (zeroCycle, cl = 0, γ = 1) are rejected.
The named geometric fill-ins on the locked host

```
F = x₀⁵ x₃ + x₃⁶ + x₁⁵ x₄ + x₄⁶ + x₂⁵ x₅ + x₅⁶,
X = V(F) ⊂ ℙ⁵
```

are the plane and the residual quintic:

```
[Π],     [S] = h² − [Π].
```

Both lie in H⁴(X, ℚ) ∩ H^{2,2}(X).
Both lie in im(cl_X):

```
cl_X(Π) = [Π],
cl_X(S) = [S].
```

---

## 3. Official theorems: miss is false on the named fill-ins

**Theorem A.** `miss_[Π]` is false.

Proof. Take z = Π ∈ CH²(X)_ℚ. Then cl_X(Π) = [Π].
The implication cl_X(z) = [Π] → False has a counterexample in the domain.
Hence miss_[Π] does not hold. □

**Theorem B.** `miss_[S]` is false.

Proof. Take z = S ∈ CH²(X)_ℚ. Then cl_X(S) = [S] = h² − [Π].
The implication cl_X(z) = [S] → False has a counterexample in the domain.
Hence miss_[S] does not hold. □

**Corollary.** The triples

```
⟨ V(F), [Π], miss_[Π] ⟩,     ⟨ V(F), [S], miss_[S] ⟩
```

are not terms of CE. They are terms of the opposite Σ-shape:
witnesses that those classes lie in im(cl_X). Hodge holds on the span
ℚ⟨h², [Π]⟩. That is the easy arrow, not a Clay disproof.

---

## 4. What would inhabit CE

A term of CE is one triple

```
⟨ X, γ, miss_γ ⟩
```

with γ primitive of type (2,2) and miss_γ a closed function,
no sorry, no axiom, no δ-reduction to 0 = 1.

No such γ is named. No such function is written.

```
theorem no_ClayDisproofTerm_supplied : True := trivial
```

Clay tag: `clay-statement-open`.
