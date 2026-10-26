# HODGE-DISPROOF

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23653001.svg)](https://doi.org/10.5281/zenodo.23653001) [![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Copyright:** (c) 2026 Benjamin Stanley Frohman. Apache License 2.0.
**License:** Apache-2.0. See `LICENSE`, `NOTICE.md`, `AUTHORS.md`, `COPYRIGHT`.
**Clay tag:** `clay-statement-open`. See `docs/CLAY_TAG.md`.
**Visibility:** public. Forking allowed. Issues enabled. No repository rulesets.

https://github.com/BenFrohman/HODGE-DISPROOF

This repository records the Lean 4 **type** of a Hodge counterexample term.
It is **not** a Clay close. The rational Hodge conjecture remains **open**.

## Access

| Field | Value |
|---|---|
| Visibility | public |
| Default branch | `main` |
| Forking | allowed |
| Issues | enabled |
| Rulesets | none |
| License | Apache-2.0 |
| Clone | `git clone https://github.com/BenFrohman/HODGE-DISPROOF.git` |

## Lean files

| File | Role |
|---|---|
| `Hodge/Basic.lean` | `Datum`, `HodgeConjecture` |
| `Hodge/Disproof.lean` | `isHodgeDisproof`, gadget `zeroCycle` (quarantined) |
| `Hodge/FalseOfBadCl.lean` | third-field reduction on the gadget |
| `Hodge/Typecheck.lean` | Prop vs structure |
| `Hodge/GeometricHost.lean` | named fourfolds as labels |
| `Hodge/GeometricDictionary.lean` | Z/V/N/cl → Chow/Betti/OffDiag/cl_X |
| `Hodge/ClayStructure.lean` | typeclass gate; no gadget instance |
| `Hodge/ClaySpec.lean` | uninhabited `ClayDisproofTerm` |
| `Hodge/ClayBlueprint.lean` | axiomatic Clay Σ-sentence; no miss axiom |

## Docs

`docs/CLAY_BLUEPRINT.md`, `docs/CLAY_DISPROOF_SPEC.md`, `docs/CLAY_STRUCTURE.md`, `docs/CLAY_TAG.md`, `docs/GEOMETRIC_REPLACEMENT.md`, `docs/KERNEL_CHECK.md`, `docs/RELEASE.md`, `papers/PREPRINT.md`.

## Firewall

- missing instance ≠ Hodge is false
- `zeroCycle` ≠ a counterexample
- a typeclass or axiom naming `cl_X` ≠ a disproof
- Clay status for rational Hodge remains **open**

---
## Archival DOI & Cryptographic Provenance

- **Dedicated 1-to-1 Zenodo DOI:** [10.5281/zenodo.23653001](https://doi.org/10.5281/zenodo.23653001)
- **Author:** Benjamin Stanley Frohman (ORCID: [0009-0006-7068-3718](https://orcid.org/0009-0006-7068-3718))
- **License:** Apache License, Version 2.0 (`Copyright (c) 2026 Benjamin Stanley Frohman`)
- **Earliest Commit Provenance:** `974ac90ad5b6e7b134a51a37ea1b9131f8cc77c3` (2026-09-23 02:28:40 PM CDT (UTC-5))
- **SealGuard SHA-256 Merkle Root:** `412a9c8922e6c9d698f4b8995b05b7a94be80131c053eea2e8b636ee0c22a41a` (`PROVENANCE_MERKLE_ROOT.json`)
- **Titan Audit Certificate:** `audit/TITAN_AUDIT_CERTIFICATE.json` (Ed25519 key `b428fb72676f1c52`)
- **Scope & Scientific Boundary:** Formalizes the type-theoretic verification schema and audit ledger for testing candidate counterexamples in Lean 4; explicitly records Clay status as OPEN and does not claim an inhabited unconditional disproof.
