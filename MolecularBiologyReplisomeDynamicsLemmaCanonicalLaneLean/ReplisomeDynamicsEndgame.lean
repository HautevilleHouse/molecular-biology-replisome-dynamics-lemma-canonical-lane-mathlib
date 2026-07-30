import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

def ReplisomeDynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem replisome_dynamics_endgame (A : AdmissibleClass) : ReplisomeDynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
