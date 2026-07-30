import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure HelicasePrimasePackage where
  helicase : Type
  primase : Type
  unwindingRate : Nat
  primerSynthesisRate : Nat
  coordinatedUnwinding : Prop
  primerInitiation : Prop
  coordinatedUnwindingTerm : coordinatedUnwinding
  primerInitiationTerm : primerInitiation

structure HelicasePrimaseEvidence (H : HelicasePrimasePackage) where
  coordinatedUnwindingClosed : H.coordinatedUnwinding
  primerInitiationClosed : H.primerInitiation

def HelicasePrimaseClosed (H : HelicasePrimasePackage) : Prop :=
  H.coordinatedUnwinding ∧ H.primerInitiation

theorem helicase_primase_closed_from_evidence (H : HelicasePrimasePackage) (E : HelicasePrimaseEvidence H) : HelicasePrimaseClosed H :=
  And.intro E.coordinatedUnwindingClosed E.primerInitiationClosed

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
