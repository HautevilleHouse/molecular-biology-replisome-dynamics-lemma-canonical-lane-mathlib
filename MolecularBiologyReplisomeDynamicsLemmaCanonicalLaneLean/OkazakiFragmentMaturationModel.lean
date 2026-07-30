import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure OkazakiFragmentMaturationModel where
  rnaPrimerRemoval : Prop
  gapFillingPolymerization : Prop
  ligationSealing : Prop
  flapProcessing : Prop
  histoneRecycling : Prop

structure OkazakiFragmentMaturationEvidence (O : OkazakiFragmentMaturationModel) where
  rnaPrimerRemovalClosed : O.rnaPrimerRemoval
  gapFillingPolymerizationClosed : O.gapFillingPolymerization
  ligationSealingClosed : O.ligationSealing
  flapProcessingClosed : O.flapProcessing
  histoneRecyclingClosed : O.histoneRecycling

def OkazakiFragmentMaturationClosed (O : OkazakiFragmentMaturationModel) : Prop :=
  O.rnaPrimerRemoval ∧ O.gapFillingPolymerization ∧ O.ligationSealing ∧
  O.flapProcessing ∧ O.histoneRecycling

theorem okazaki_fragment_maturation_closed_from_evidence
    (O : OkazakiFragmentMaturationModel) (E : OkazakiFragmentMaturationEvidence O) :
    OkazakiFragmentMaturationClosed O := by
  exact And.intro E.rnaPrimerRemovalClosed
    (And.intro E.gapFillingPolymerizationClosed
      (And.intro E.ligationSealingClosed
        (And.intro E.flapProcessingClosed E.histoneRecyclingClosed)))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse