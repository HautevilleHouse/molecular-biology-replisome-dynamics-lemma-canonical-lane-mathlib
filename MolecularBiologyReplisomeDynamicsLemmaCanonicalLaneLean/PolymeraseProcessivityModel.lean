import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure PolymeraseProcessivityModel where
  nucleotideIncorporationRate : Prop
  fidelityMechanism : Prop
  exonucleaseProofreading : Prop
  clampInteractionAffinity : Prop
  rnaPrimerExtension : Prop

structure PolymeraseProcessivityEvidence (P : PolymeraseProcessivityModel) where
  nucleotideIncorporationRateClosed : P.nucleotideIncorporationRate
  fidelityMechanismClosed : P.fidelityMechanism
  exonucleaseProofreadingClosed : P.exonucleaseProofreading
  clampInteractionAffinityClosed : P.clampInteractionAffinity
  rnaPrimerExtensionClosed : P.rnaPrimerExtension

def PolymeraseProcessivityClosed (P : PolymeraseProcessivityModel) : Prop :=
  P.nucleotideIncorporationRate ∧ P.fidelityMechanism ∧ P.exonucleaseProofreading ∧
  P.clampInteractionAffinity ∧ P.rnaPrimerExtension

theorem polymerase_processivity_closed_from_evidence
    (P : PolymeraseProcessivityModel) (E : PolymeraseProcessivityEvidence P) :
    PolymeraseProcessivityClosed P := by
  exact And.intro E.nucleotideIncorporationRateClosed
    (And.intro E.fidelityMechanismClosed
      (And.intro E.exonucleaseProofreadingClosed
        (And.intro E.clampInteractionAffinityClosed E.rnaPrimerExtensionClosed)))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse