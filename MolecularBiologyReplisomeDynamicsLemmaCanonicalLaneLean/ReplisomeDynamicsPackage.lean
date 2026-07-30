import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplisomeDynamicsPackage (A : AdmissibleClass) where
  replicationFork : Prop
  helicaseUnwinding : Prop
  polymeraseLoading : Prop
  clampLoading : Prop
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragmentMaturation : Prop
  replisomeCoordinated : Prop

structure ReplisomeDynamicsEvidence (A : AdmissibleClass) (R : ReplisomeDynamicsPackage A) where
  replicationForkClosed : R.replicationFork
  helicaseUnwindingClosed : R.helicaseUnwinding
  polymeraseLoadingClosed : R.polymeraseLoading
  clampLoadingClosed : R.clampLoading
  leadingStrandSynthesisClosed : R.leadingStrandSynthesis
  laggingStrandSynthesisClosed : R.laggingStrandSynthesis
  okazakiFragmentMaturationClosed : R.okazakiFragmentMaturation
  replisomeCoordinatedClosed : R.replisomeCoordinated

def ReplisomeDynamicsClosed (A : AdmissibleClass) (R : ReplisomeDynamicsPackage A) : Prop :=
  R.replicationFork ∧ R.helicaseUnwinding ∧ R.polymeraseLoading ∧
  R.clampLoading ∧ R.leadingStrandSynthesis ∧ R.laggingStrandSynthesis ∧
  R.okazakiFragmentMaturation ∧ R.replisomeCoordinated

theorem replisome_dynamics_closed_from_evidence (A : AdmissibleClass) (R : ReplisomeDynamicsPackage A)
    (E : ReplisomeDynamicsEvidence A R) : ReplisomeDynamicsClosed A R := by
  exact And.intro E.replicationForkClosed
    (And.intro E.helicaseUnwindingClosed
      (And.intro E.polymeraseLoadingClosed
        (And.intro E.clampLoadingClosed
          (And.intro E.leadingStrandSynthesisClosed
            (And.intro E.laggingStrandSynthesisClosed
              (And.intro E.okazakiFragmentMaturationClosed E.replisomeCoordinatedClosed))))))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
