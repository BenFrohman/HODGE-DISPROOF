import Hodge.RealProjectiveFourfold
import Hodge.SchemeSpec
import Hodge.IntegratedSpec
import Hodge.IntegratedGeometry
import Hodge.FourfoldMissType
import Hodge.ProjectiveFourfoldSpace

-- These regression proofs check the targets' logical content, not geometric realization.
example : ¬ Hodge.RealFourfoldSpec.RationalHodgeConjectureIsFalse (fun _ _ => False) := by
  exact Hodge.RealFourfoldSpec.no_disproof_without_hodge_classes _ (fun _ _ h => h)

example : ¬ Hodge.IntegratedSpec.ClayHodgeConjectureDisproof
    (fun _ => False) (fun _ _ _ => True) := by
  exact Hodge.IntegratedSpec.no_disproof_without_projectivity _ _ (fun _ h => h)

example (cl : (F : Hodge.SchemeSpec.RealProjectiveFourfold) →
    Hodge.SchemeSpec.ChowGroupSurfacesQ F → Hodge.SchemeSpec.SingularCohomologyQ F 4)
    (h : ∀ F γ, ∃ z, cl F z = γ) :
    ¬ Hodge.SchemeSpec.ClayFourfoldDisproofOnSchemes cl :=
  Hodge.SchemeSpec.no_disproof_of_surjective cl h

#print axioms Hodge.RealFourfoldSpec.no_disproof_without_hodge_classes
#print axioms Hodge.SchemeSpec.no_disproof_of_surjective
#print axioms Hodge.IntegratedSpec.no_disproof_without_projectivity
