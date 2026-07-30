import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure LaggingStrandPackage where
  okazakiFragments : ℕ
  rnaPrimerSynthesis : Prop
  fragmentLigation : Prop
  clampLoadingCycles : ℕ → Prop

structure LaggingStrandEvidence (L : LaggingStrandPackage) where
  okazakiFragmentsClosed : L.okazakiFragments ≥ 1
  rnaPrimerSynthesisClosed : L.rnaPrimerSynthesis
  fragmentLigationClosed : L.fragmentLigation
  clampLoadingCyclesClosed : L.clampLoadingCycles L.okazakiFragments

def LaggingStrandClosed (L : LaggingStrandPackage) : Prop :=
  L.okazakiFragments ≥ 1 ∧ L.rnaPrimerSynthesis ∧ L.fragmentLigation ∧ L.clampLoadingCycles L.okazakiFragments

theorem lagging_strand_closed_from_evidence (L : LaggingStrandPackage) (E : LaggingStrandEvidence L) :
    LaggingStrandClosed L := by
  exact And.intro E.okazakiFragmentsClosed
    (And.intro E.rnaPrimerSynthesisClosed
      (And.intro E.fragmentLigationClosed E.clampLoadingCyclesClosed))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse