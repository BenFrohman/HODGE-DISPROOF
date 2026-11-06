# Reproducible abstract-interface obstructions

`lake build` checks only `Hodge.InterfaceObstructions` and its import closure,
using Lean/Mathlib 4.22.0. `lake env lean InterfaceAxiomAudit.lean` rejects
nonstandard axioms in the new module. `bash scripts/check_schema.sh` continues
to check the existing selected dependency-free schema modules separately.
Neither lane claims that all legacy modules build or that a geometric witness exists.

The legacy `Geometric.ClayDisproof` target accepts a string-labelled P4 and an
arbitrary `CycleClassData`. The explicit inhabited regression uses rational
carriers, zero cycle map, all classes designated Hodge, and class 1. It proves
that the interface is insufficient, not that projective space violates Hodge.
The existing target and its theorems are preserved, not reinterpreted as geometry.
Future genuine geometry must bind the cycle map and Hodge subspace to the actual host.

Multiplication by 2 is surjective over Q, so the integer parity gadget supplies
no rational obstruction. A nonzero cycle class excludes a full zero cycle map;
a nonzero map into a one-dimensional rational target is surjective.

For a genuine nonempty smooth projective complex fourfold, an ample hyperplane
class h has cl(H^2)=h^2 and integral_X h^4=degree(X)>0. Thus h^2 is nonzero and
the FULL codimension-two cycle map cannot be zero. This geometric application
uses classical intersection/cohomology facts and is not formalized by the
abstract regression lemmas. A primitive-projected cycle map can be zero: the
full-map conclusion must not be applied to it.

What remains missing is an actual smooth projective host, actual rational Chow
and Betti groups, the geometric cycle-class comparison, a rational (2,2) class,
and proof that every algebraic cycle misses that class. No such realization,
new geometric axiom, or solution to rational Hodge is supplied by these tests.
