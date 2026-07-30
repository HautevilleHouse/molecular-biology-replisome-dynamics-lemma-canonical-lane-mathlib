import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplicationForkStabilityModel where
  forkProtectionComplexAssembly : Prop
  dnaDamageRepairRecruitment : Prop
  replicationStressResponse : Prop
  checkpointKinaseActivation : Prop
  forkRestartMechanisms : Prop

structure ReplicationForkStabilityEvidence (R : ReplicationForkStabilityModel) where
  forkProtectionComplexAssemblyClosed : R.forkProtectionComplexAssembly
  dnaDamageRepairRecruitmentClosed : R.dnaDamageRepairRecruitment
  replicationStressResponseClosed : R.replicationStressResponse
  checkpointKinaseActivationClosed : R.checkpointKinaseActivation
  forkRestartMechanismsClosed : R.forkRestartMechanisms

def ReplicationForkStabilityClosed (R : ReplicationForkStabilityModel) : Prop :=
  R.forkProtectionComplexAssembly ∧ R.dnaDamageRepairRecruitment ∧
  R.replicationStressResponse ∧ R.checkpointKinaseActivation ∧ R.forkRestartMechanisms

theorem replication_fork_stability_closed_from_evidence
    (R : ReplicationForkStabilityModel) (E : ReplicationForkStabilityEvidence R) :
    ReplicationForkStabilityClosed R := by
  exact And.intro E.forkProtectionComplexAssemblyClosed
    (And.intro E.dnaDamageRepairRecruitmentClosed
      (And.intro E.replicationStressResponseClosed
        (And.intro E.checkpointKinaseActivationClosed E.forkRestartMechanismsClosed)))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse