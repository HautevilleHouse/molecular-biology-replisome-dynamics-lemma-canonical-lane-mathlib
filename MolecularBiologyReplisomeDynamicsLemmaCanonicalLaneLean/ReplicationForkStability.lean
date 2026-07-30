import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplicationForkStabilityPackage where
  replicationFork : Type u
  stalledForkRate : Prop
  reversedForkRate : Prop
  restartMechanismEfficiency : Prop
  genomeIntegrityMaintained : Prop

structure ReplicationForkStabilityEvidence (F : ReplicationForkStabilityPackage) where
  stalledForkRateClosed : F.stalledForkRate
  reversedForkRateClosed : F.reversedForkRate
  restartMechanismEfficiencyClosed : F.restartMechanismEfficiency
  genomeIntegrityMaintainedClosed : F.genomeIntegrityMaintained

def ReplicationForkStabilityClosed (F : ReplicationForkStabilityPackage) : Prop :=
  F.stalledForkRate ∧ F.reversedForkRate ∧
  F.restartMechanismEfficiency ∧ F.genomeIntegrityMaintained

theorem replication_fork_stability_closed_from_evidence (F : ReplicationForkStabilityPackage) (E : ReplicationForkStabilityEvidence F) : ReplicationForkStabilityClosed F := by
  exact And.intro E.stalledForkRateClosed
    (And.intro E.reversedForkRateClosed
      (And.intro E.restartMechanismEfficiencyClosed
        E.genomeIntegrityMaintainedClosed))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
