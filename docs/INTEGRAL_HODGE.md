# Integral Hodge versus rational Hodge

**Author:** Benjamin Stanley Frohman  
**Copyright:** © 2026 Benjamin Stanley Frohman  
**License:** Apache-2.0

The coefficient \(-\tfrac16\) is not an integral cycle. This note states the integral conjecture correctly and records what the plane on \(V(F)\) actually gives over \(\mathbb{Z}\).

## The two conjectures

Let \(X\) be a smooth complex projective variety and let \(k\ge 0\).

**Rational Hodge conjecture** (Clay, still open in general). The cycle-class map

```text
cl_Q : CH^k(X)_Q → H^{2k}(X, Q)
```

is surjective onto \(H^{2k}(X,\mathbb{Q})\cap H^{k,k}(X)\). Coefficients are rational. On a fourfold the first open case is \(k=2\).

**Integral Hodge conjecture.** The cycle-class map

```text
cl_Z : CH^k(X) → H^{2k}(X, Z)
```

is surjective onto

```text
Hdg^{2k}(X, Z) := H^{2k}(X, Z) ∩ H^{k,k}(X).
```

Coefficients are integers. A class is algebraic in this sense only if it is an integral linear combination of classes of subvarieties, not merely a rational combination.

These are different sentences. A counterexample to the integral conjecture is not a counterexample to the rational one: if \(m\gamma\) is an integral algebraic class for some integer \(m\neq 0\), then \(\gamma\) is a rational algebraic class.

## The integral conjecture is already false, elsewhere

It is not an open Clay problem.

- Atiyah–Hirzebruch (1962) produced torsion classes in integral cohomology that are Hodge classes and are not algebraic.
- Kollár produced non-torsion counterexamples on very general hypersurfaces in \(\mathbb{P}^4\): integral Hodge classes which become algebraic only after multiplication by an integer greater than \(1\). Those kill the integral statement and leave the rational statement untouched.

Voisin's counterexamples to Hodge for non-projective compact Kähler manifolds are a third statement. None of the three inhabits a rational miss on a smooth complex projective fourfold.

## What \(-\tfrac16\) is on \(V(F)\)

Let \(X=V(F)\subset\mathbb{P}^5\) be the three-chain sextic, and let \(\Pi=V(x_3,x_4,x_5)\). Then \([S]=h^2-[\Pi]\) for the residual quintic surface, and the intersection matrix of \(\{h^2,[\Pi]\}\) is

```text
[  6   1 ]
[  1  21 ]     determinant 125.
```

The number \(21\) is \(c_2(N_{\Pi/X})\). The number \(6\) is \(h^4=\deg X\).

Over \(\mathbb{Q}\), the Lefschetz-primitive projection is

```text
α = [Π] − (1/6) h^2,     ⟨α, h^2⟩ = 0,     α ≠ 0.
```

\(\alpha\) lies in \(H^4(X,\mathbb{Q})\), not necessarily in \(H^4(X,\mathbb{Z})\). The factor \(\tfrac16\) is legal for the rational conjecture and illegal as a claim that \(\alpha\) is an integral class. And \(\alpha\) is algebraic over \(\mathbb{Q}\), so it is not a rational miss.

Clear the denominator:

```text
β := 6α = 6[Π] − h^2 = 5[Π] − [S].
```

Then \(\beta\in H^4(X,\mathbb{Z})\), \(\langle\beta, h^2\rangle = 6-6\cdot 1 = 0\), and \(\beta\neq 0\). The same formula exhibits \(\beta\) as an integral combination of two surfaces, so

```text
β ∈ im( cl_Z : CH^2(X) → H^4(X, Z) ).
```

\(\beta\) witnesses an integral algebraic class in the primitive summand. It does not witness a failure of the integral Hodge conjecture on \(X\).

## What is not claimed

The rank-\(2\) lattice \(L=\mathbb{Z} h^2+\mathbb{Z}[\Pi]\) has discriminant \(125=5^3\). Discriminant greater than \(1\) means \(L\) might fail to be saturated in \(H^4(X,\mathbb{Z})\). A class in the saturation but not in \(L\) would be an integral Hodge class whose expression in the basis \(\{h^2,[\Pi]\}\) uses a denominator. Such a class would still lie in \(\mathbb{Q}\langle h^2,[\Pi]\rangle\), hence would be algebraic over \(\mathbb{Q}\), and might fail to be algebraic over \(\mathbb{Z}\). That would be an integral counterexample of Kollár type on this host. It would still not be a rational miss.

No such fractional integral class has been produced. Saturation of \(L\) is not proved and not disproved here.

| class | lattice | algebraic? | which conjecture it can touch |
|---|---|---|---|
| \([\Pi]\), \([S]\), \(h^2\) | integral | yes, over \(\mathbb{Z}\) | neither; they lie in the image |
| \(\beta=h^2-6[\Pi]=[S]-5[\Pi]\) | integral, primitive | yes, over \(\mathbb{Z}\) | neither |
| \(\alpha=[\Pi]-\tfrac16 h^2=\beta/6\) | rational, not claimed integral | yes, over \(\mathbb{Q}\) | neither |
| a class outside \(\mathbb{Q}\langle h^2,[\Pi]\rangle\) | not written | unknown | rational Hodge, if it exists and is missed |
| a saturated class in \(\tfrac1m L\setminus L\) | not written | unknown over \(\mathbb{Z}\) | integral Hodge only |

Clay status of the rational Hodge conjecture: **open**.  
Status of the integral Hodge conjecture in general: **false**, by Atiyah–Hirzebruch and by Kollár, on varieties other than this computation.  
Status of the integral Hodge conjecture on this \(V(F)\): **not decided by \(\alpha\) or \(\beta\)**.
