import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure HelicaseUnwindingModel where
  atpHydrolysisRate : Prop
  translocationSpeed : Prop
  strandSeparationEfficiency : Prop
  ssbBindingCoordination : Prop
  unwindingProcessivity : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingModel) where
  atpHydrolysisRateClosed : H.atpHydrolysisRate
  translocationSpeedClosed : H.translocationSpeed
  strandSeparationEfficiencyClosed : H.strandSeparationEfficiency
  ssbBindingCoordinationClosed : H.ssbBindingCoordination
  unwindingProcessivityClosed : H.unwindingProcessivity

def HelicaseUnwindingClosed (H : HelicaseUnwindingModel) : Prop :=
  H.atpHydrolysisRate ∧ H.translocationSpeed ∧ H.strandSeparationEfficiency ∧
  H.ssbBindingCoordination ∧ H.unwindingProcessivity

theorem helicase_unwinding_closed_from_evidence
    (H : HelicaseUnwindingModel) (E : HelicaseUnwindingEvidence H) :
    HelicaseUnwindingClosed H := by
  exact And.intro E.atpHydrolysisRateClosed
    (And.intro E.translocationSpeedClosed
      (And.intro E.strandSeparationEfficiencyClosed
        (And.intro E.ssbBindingCoordinationClosed E.unwindingProcessivityClosed)))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse