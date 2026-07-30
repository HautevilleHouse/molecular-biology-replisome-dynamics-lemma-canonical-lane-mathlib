import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplicationForkProtectionPackage (C : ReplisomeCorePackage) where
  forkStabilizationAgainstStress : Prop
  checkpointSignaling : Prop
  homologousRecombinationRepair : Prop
  translesionSynthesis : Prop
  forkRestart : Prop

structure ReplicationForkProtectionEvidence {C : ReplisomeCorePackage} (F : ReplicationForkProtectionPackage C) where
  forkStabilizationAgainstStressClosed : F.forkStabilizationAgainstStress
  checkpointSignalingClosed : F.checkpointSignaling
  homologousRecombinationRepairClosed : F.homologousRecombinationRepair
  translesionSynthesisClosed : F.translesionSynthesis
  forkRestartClosed : F.forkRestart

def ReplicationForkProtectionClosed {C : ReplisomeCorePackage} (F : ReplicationForkProtectionPackage C) : Prop :=
  F.forkStabilizationAgainstStress ∧ F.checkpointSignaling ∧
  F.homologousRecombinationRepair ∧ F.translesionSynthesis ∧ F.forkRestart

theorem replication_fork_protection_closed_from_evidence {C : ReplisomeCorePackage} (F : ReplicationForkProtectionPackage C) (E : ReplicationForkProtectionEvidence F) : ReplicationForkProtectionClosed F := by
  exact And.intro E.forkStabilizationAgainstStressClosed (And.intro E.checkpointSignalingClosed (And.intro E.homologousRecombinationRepairClosed (And.intro E.translesionSynthesisClosed E.forkRestartClosed)))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse