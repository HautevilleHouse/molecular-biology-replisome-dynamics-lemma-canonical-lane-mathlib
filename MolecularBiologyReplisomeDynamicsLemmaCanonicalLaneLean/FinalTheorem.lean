import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeDynamicsPackage
import MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeStochasticProcess
import MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeRegulationNetwork

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedReplisomeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_replisome_endgame (A : AdmissibleClass) :
    ConstrainedReplisomeClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
