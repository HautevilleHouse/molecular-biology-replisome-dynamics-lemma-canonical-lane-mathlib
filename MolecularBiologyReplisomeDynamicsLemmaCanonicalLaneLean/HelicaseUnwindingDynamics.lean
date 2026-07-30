import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure HelicaseUnwindingPackage (C : ReplisomeCorePackage) where
  atpHydrolysisRate : Prop
  translocationSpeed : Prop
  strandSeparationEfficiency : Prop
  unwindingProcessivity : Prop
  forkStabilization : Prop

structure HelicaseUnwindingEvidence {C : ReplisomeCorePackage} (H : HelicaseUnwindingPackage C) where
  atpHydrolysisRateClosed : H.atpHydrolysisRate
  translocationSpeedClosed : H.translocationSpeed
  strandSeparationEfficiencyClosed : H.strandSeparationEfficiency
  unwindingProcessivityClosed : H.unwindingProcessivity
  forkStabilizationClosed : H.forkStabilization

def HelicaseUnwindingClosed {C : ReplisomeCorePackage} (H : HelicaseUnwindingPackage C) : Prop :=
  H.atpHydrolysisRate ∧ H.translocationSpeed ∧ H.strandSeparationEfficiency ∧
  H.unwindingProcessivity ∧ H.forkStabilization

theorem helicase_unwinding_closed_from_evidence {C : ReplisomeCorePackage} (H : HelicaseUnwindingPackage C) (E : HelicaseUnwindingEvidence H) : HelicaseUnwindingClosed H := by
  exact And.intro E.atpHydrolysisRateClosed (And.intro E.translocationSpeedClosed (And.intro E.strandSeparationEfficiencyClosed (And.intro E.unwindingProcessivityClosed E.forkStabilizationClosed)))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse