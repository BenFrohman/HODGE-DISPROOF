# How this ledger was found

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman.
License: Apache License 2.0.

This is an origin note for the *records*, not a claim that Hodge is proved or disproved.

## What was not found

No named class

    γ ∈ H^4(X, Q) ∩ H^{2,2}(X) \ im(cl_X)

on a smooth complex projective fourfold. Term B stays empty.
Vacuous Hodge on a very general high-degree host is Noether–Lefschetz,
already classical, and is not V(F).

## What was found, and how it happened

The locked host began as a single string

    F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6.

Trying to name a Fourier–Mukai partner Y for X = V(F) forced a look at
the exponent matrix. The matrix splits as three identical 2×2 chain
blocks. That split was not the intended Clay object. It was a side
effect of writing F carefully enough to transpose it.

Once the blocks were visible:

    W = u^5 v + v^6,     μ(W) = 30,     ĉ(W) = 4/3
    W^T = u^5 + u v^6
    F^T = x0^5 + x0 x3^6 + x1^5 + x1 x4^6 + x2^5 + x2 x5^6

F^T is a Berglund–Hübsch mirror *candidate* (orbifold / LG pair).
It is not Y (no kernel on X × V(F^T), not a smooth projective fourfold
in ordinary space). Calling F^T “just Y” was the mix-up that produced
the lock files.

A second side effect: the residual intersection X ∩ L = Π ∪ S showed
S is a surface (dim 2), not a fourfold partner. Bondal–Orlov then
separates D^b(S) from D^b(X) from the empty D^b(Y).

A third side effect: overviews kept writing Hdg² as H^2 ∩ H^{1,1}.
Lefschetz (1,1) then seemed to kill Term B. That is the wrong degree.
The leftover problem is H^4 ∩ H^{2,2}. The correction is the finding;
the miss class is not.

## Novel as ledger, not as Clay

What is new in these repos is the *separation*:

- atom W versus fourfold V(F) versus suspension W+z^2
- BHK string F^T versus Fourier–Mukai partner Y
- vacuous NL versus special host with algebraic [Π], [S]
- Term A (∀) versus Term B (∃ miss), exactly one of which can be true,
  neither written

That bookkeeping is the discovery. It does not inhabit Field 2 or Field 3.

## License and citation

Copyright (c) 2026 Benjamin Stanley Frohman.
Licensed under the Apache License, Version 2.0.
Cite as a schema and a ledger, not as a Clay resolution.
X: @Investor0x. GitHub: @BenFrohman.
