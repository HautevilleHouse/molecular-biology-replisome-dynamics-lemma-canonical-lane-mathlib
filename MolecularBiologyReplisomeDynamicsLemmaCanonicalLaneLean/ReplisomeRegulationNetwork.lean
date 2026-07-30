import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplisomeRegulationNetwork (A : AdmissibleClass) where
  cellCycleControl : Prop
  checkpointSignaling : Prop
  replicationLicensing : Prop
  originFiring : Prop
  replicationTiming : Prop
  chromatinRemodeling : Prop
  replicationStressResponse : Prop
  genomeStability : Prop

structure ReplisomeRegulationEvidence (A : AdmissibleClass) (N : ReplisomeRegulationNetwork A) where
  cellCycleControlClosed : N.cellCycleControl
  checkpointSignalingClosed : N.checkpointSignaling
  replicationLicensingClosed : N.replicationLicensing
  originFiringClosed : N.originFiring
  replicationTimingClosed : N.replicationTiming
  chromatinRemodelingClosed : N.chromatinRemodeling
  replicationStressResponseClosed : N.replicationStressResponse
  genomeStabilityClosed : N.genomeStability

def ReplisomeRegulationClosed (A : AdmissibleClass) (N : ReplisomeRegulationNetwork A) : Prop :=
  N.cellCycleControl ∧ N.checkpointSignaling ∧ N.replicationLicensing ∧
  N.originFiring ∧ N.replicationTiming ∧ N.chromatinRemodeling ∧
  N.replicationStressResponse ∧ N.genomeStability

theorem replisome_regulation_closed_from_evidence (A : AdmissibleClass) (N : ReplisomeRegulationNetwork A)
    (E : ReplisomeRegulationEvidence A N) : ReplisomeRegulationClosed A N := by
  exact And.intro E.cellCycleControlClosed
    (And.intro E.checkpointSignalingClosed
      (And.intro E.replicationLicensingClosed
        (And.intro E.originFiringClosed
          (And.intro E.replicationTimingClosed
            (And.intro E.chromatinRemodelingClosed
              (And.intro E.replicationStressResponseClosed E.genomeStabilityClosed))))))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
