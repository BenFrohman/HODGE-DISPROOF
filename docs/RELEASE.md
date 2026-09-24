# Release v1.1.0-schema

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Date:** 23 September 2026
**Clay tag:** `clay-statement-open`
**Status:** schema pack. Not a Clay close.

Public repository: https://github.com/BenFrohman/HODGE-DISPROOF

## Contents

- `Hodge/Basic.lean` — `Datum`, `hodgeClasses`, `HodgeConjecture`
- `Hodge/Disproof.lean` — `isHodgeDisproof`, `HodgeDisproof`, gadget
- `Hodge/FalseOfBadCl.lean` — third field; closes on `zeroCycle` only
- `Hodge/Typecheck.lean` — Prop-level `HodgeDisproofStatement`
- `Hodge/GeometricHost.lean` — type of `cl_X : CH^k(X)_Q → H^{2k}(X,Q)`
- `papers/PREPRINT.md` — draft note

## What this release is

The type of a counterexample term, plus a linear-algebra gadget inhabitant.

## What this release is not

A named fourfold with a geometric cycle-class map missing a Hodge class.
Declaring `cl_X` does not close Clay Hodge.

## GitHub Release UI

Cut the public release from `main` with tag `v1.1.0-schema`:

1. https://github.com/BenFrohman/HODGE-DISPROOF/releases/new
2. Tag: `v1.1.0-schema`
3. Title: `v1.1.0-schema — type of a Hodge counterexample term`
4. Mark as latest. Do not title it “Hodge false”.
