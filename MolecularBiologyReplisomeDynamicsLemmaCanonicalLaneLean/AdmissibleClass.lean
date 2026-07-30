import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ReplisomeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReplisomeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse