import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplicationTimingRegulationPackage where
  originFiring : Prop
  replicationSpeed : Prop
  checkpointControl : Prop
  originFiringTerm : originFiring
  replicationSpeedTerm : replicationSpeed
  checkpointControlTerm : checkpointControl

structure ReplicationTimingRegulationEvidence (T : ReplicationTimingRegulationPackage) where
  originFiringClosed : T.originFiring
  replicationSpeedClosed : T.replicationSpeed
  checkpointControlClosed : T.checkpointControl

def ReplicationTimingRegulationClosed (T : ReplicationTimingRegulationPackage) : Prop :=
  T.originFiring ∧ T.replicationSpeed ∧ T.checkpointControl

theorem replication_timing_regulation_closed_from_evidence (T : ReplicationTimingRegulationPackage) (E : ReplicationTimingRegulationEvidence T) : ReplicationTimingRegulationClosed T :=
  And.intro E.originFiringClosed (And.intro E.replicationSpeedClosed E.checkpointControlClosed)

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
