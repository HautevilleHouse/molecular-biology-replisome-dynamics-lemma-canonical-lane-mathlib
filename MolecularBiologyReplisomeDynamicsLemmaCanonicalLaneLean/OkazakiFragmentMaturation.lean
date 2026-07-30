import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure OkazakiFragmentMaturationPackage where
  rnaPrimerRemoval : Prop
  gapFilling : Prop
  ligation : Prop
  rnaPrimerRemovalTerm : rnaPrimerRemoval
  gapFillingTerm : gapFilling
  ligationTerm : ligation

structure OkazakiFragmentMaturationEvidence (O : OkazakiFragmentMaturationPackage) where
  rnaPrimerRemovalClosed : O.rnaPrimerRemoval
  gapFillingClosed : O.gapFilling
  ligationClosed : O.ligation

def OkazakiFragmentMaturationClosed (O : OkazakiFragmentMaturationPackage) : Prop :=
  O.rnaPrimerRemoval ∧ O.gapFilling ∧ O.ligation

theorem okazaki_fragment_maturation_closed_from_evidence (O : OkazakiFragmentMaturationPackage) (E : OkazakiFragmentMaturationEvidence O) : OkazakiFragmentMaturationClosed O :=
  And.intro E.rnaPrimerRemovalClosed (And.intro E.gapFillingClosed E.ligationClosed)

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
