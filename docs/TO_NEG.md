# to_neg: CE → ¬HC, and why it does not fire

**Author:** Benjamin Stanley Frohman
**Copyright:** © 2026 Benjamin Stanley Frohman
**License:** Apache-2.0
**Status:** implication written; premise uninhabited; ¬HC not obtained.

---

## 0. Two types

```
HC  :≡  ∀ D  ∀ γ ∈ Hdg²(D),  ∃ z,  cl_D(z) = γ

CE  :≡  ∃ D  ∃ γ ∈ Hdg²(D),  (∀ z, cl_D(z) = γ → False)

¬HC :≡  HC → False
```

`to_neg` is the function

```
to_neg : CE → ¬HC
```

It is not a term of ¬HC. Applying it requires a term of CE.

---

## 1. Stepwise proof of to_neg

Let `t = ⟨D₀, γ₀, p⟩` be a term of CE, so

- D₀ is a host,
- γ₀ ∈ Hdg²(D₀),
- p : ∀ z, cl_{D₀}(z) = γ₀ → False.

Let `h` be a hypothetical term of HC. Then, instantiating the two universal quantifiers,

```
h D₀ γ₀ : ∃ z, cl_{D₀}(z) = γ₀.
```

Unpack the pair: some z₀ with

```
e : cl_{D₀}(z₀) = γ₀.
```

Apply the third field:

```
p z₀ e : False.
```

Discharge the hypothesis `h`. Conclusion: HC → False, i.e. ¬HC.

That is the whole proof. Every step is modus ponens / Σ-elimination. No extra geometry.

---

## 2. What must be fed to to_neg

The argument of `to_neg` is the whole triple. Fields 1–2 are not enough.

On the locked host the first two fields can be filled:

```
X = V(F) ⊂ ℙ⁵,
F = x₀⁵x₃ + x₃⁶ + x₁⁵x₄ + x₄⁶ + x₂⁵x₅ + x₅⁶,

γ = [Π],   Π = V(x₃,x₄,x₅).
```

Then γ ∈ H⁴(X,ℚ) ∩ H^{2,2}(X) and γ ∉ ℚ⟨ω²⟩. Same for [S] = h² − [Π].

Field 3 for these γ is the implication

```
∀ z ∈ CH²(X)_ℚ,  cl_X(z) = γ → False.
```

That implication is false:

```
cl_X(Π) = [Π],     cl_X(S) = [S].
```

So `p` does not exist for these γ. The constructor of CE does not apply. There is no argument for `to_neg`.

---

## 3. Attempted application (fails)

```
to_neg ⟨V(F), [Π], ?p⟩
```

`?p` would have to prove cl_X(Π) = [Π] → False. From cl_X(Π) = [Π] one would get False. That is a contradiction in the data, not a proof of ¬HC.

Same failure for [S].

`grind` on fields 1–2 does not manufacture a different γ. No other named class is supplied.

---

## 4. What is obtained

| object | status |
|---|---|
| to_neg : CE → ¬HC | written, closed |
| term of CE | not written |
| to_neg(t) : ¬HC | cannot fire; t missing |
| Hodge on ℚ⟨h²,[Π]⟩ | easy arrow; not ¬HC |

```
theorem no_ClayDisproofTerm_supplied : True := trivial
```

Clay tag: `clay-statement-open`.
