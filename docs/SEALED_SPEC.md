# Sealed specification

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Date: 23 September 2026.
Copyright (c) 2026 Benjamin Stanley Frohman.

The geometric API is sealed as a *field list*. Every structure that belongs
on the spec is named:

| Structure | Contents |
|---|---|
| SmoothComplexManifold | carrier and dimension |
| HodgeTheory | H^•, F^•, conjugation, graded pieces |
| PolarizedKaehlerStructure | L, Hard Lefschetz, primitives |
| TranscendentalChowSystem | CH^• and cl(z) ∈ F^k ∩ F̄^k |
| ClayHodgeConjectureDisproof | uninhabited ∃ |

Sealed means: no further mock fields will be added to pretend the
API is incomplete. It does **not** mean a constructor was supplied.

An inhabited `∃` with dummy types is not a fill. A Clay constructor would
be a named projective fourfold, a primitive rational (2,2) class, and a
geometric miss lemma. That constructor is refused.

Files: `Hodge/IntegratedGeometry.lean`, `Hodge/IntegratedSpec.lean`,
`Hodge/FourfoldCase.lean`.

Clay status: **open**.
