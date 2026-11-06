# Target-predicate corrections

The selected schema regression workflow typechecks the edited interface modules and logical regression proofs, not the entire legacy repository and not the Hodge conjecture.

- `RealFourfoldSpec.RationalHodgeConjectureIsFalse` now requires a supplied rational (2,2)-membership predicate and a miss. Its namespace differs from `SchemeSpec`, whose declarations previously collided when imported together.
- `SchemeSpec.ClayFourfoldDisproofOnSchemes` now takes an actual cycle-class function and requires a primitive rational Hodge class outside its image, rather than `isPrimitiveHodge22 ∧ True`.
- Both integrated targets require projectivity, rational Hodge membership, dimension four, and a cycle-class miss. Their carrier-only structures and user-supplied predicates are still abstract, not constructions of manifolds or cohomology.
- `FourfoldMiss` now quantifies over finite rational combinations of surfaces, with an explicit zero class and the imported `Std.Internal.Rat` scalar type (the old unbound `Rat` identifier could be auto-implicit), rather than merely the existence of a class. The operations are existing abstract interface axioms, not verified geometric operations.
- The linear fourfold-filter target requires Hodge membership and a miss. It remains an abstract model, not a geometric counterexample.

No geometric witness was constructed. Existing interface axioms are retained, no new axiom is introduced, and existing tautological `True` metadata lemmas are not evidence that a disproof exists or that an interface is uninhabited. Constructing the actual smooth projective variety, its rational cohomology, Hodge classes, rational Chow group and genuine cycle-class map, and proving a miss, remain unresolved.

Run `bash scripts/check_schema.sh`. Regression proofs exclude targets with no Hodge classes, no projective hosts, or surjective cycle-class maps. The printed axiom dependencies include pre-existing abstract interface constants; this is not a standard-axioms-only geometric certificate.
