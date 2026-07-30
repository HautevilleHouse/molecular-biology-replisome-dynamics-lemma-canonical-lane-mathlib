import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure PrimaseOkazakiCoordinationPackage (C : ReplisomeCorePackage) where
  rnaPrimerSynthesis : Prop
  primerTransferToPolymerase : Prop
  okazakiFragmentInitiation : Prop
  fragmentLengthRegulation : Prop
  rnaseHEndonuclease : Prop
  ligaseSealing : Prop

structure PrimaseOkazakiCoordinationEvidence {C : ReplisomeCorePackage} (P : PrimaseOkazakiCoordinationPackage C) where
  rnaPrimerSynthesisClosed : P.rnaPrimerSynthesis
  primerTransferToPolymeraseClosed : P.primerTransferToPolymerase
  okazakiFragmentInitiationClosed : P.okazakiFragmentInitiation
  fragmentLengthRegulationClosed : P.fragmentLengthRegulation
  rnaseHEndonucleaseClosed : P.rnaseHEndonuclease
  ligaseSealingClosed : P.ligaseSealing

def PrimaseOkazakiCoordinationClosed {C : ReplisomeCorePackage} (P : PrimaseOkazakiCoordinationPackage C) : Prop :=
  P.rnaPrimerSynthesis ∧ P.primerTransferToPolymerase ∧ P.okazakiFragmentInitiation ∧
  P.fragmentLengthRegulation ∧ P.rnaseHEndonuclease ∧ P.ligaseSealing

theorem primase_okazaki_coordination_closed_from_evidence {C : ReplisomeCorePackage} (P : PrimaseOkazakiCoordinationPackage C) (E : PrimaseOkazakiCoordinationEvidence P) : PrimaseOkazakiCoordinationClosed P := by
  exact And.intro E.rnaPrimerSynthesisClosed (And.intro E.primerTransferToPolymeraseClosed (And.intro E.okazakiFragmentInitiationClosed (And.intro E.fragmentLengthRegulationClosed (And.intro E.rnaseHEndonucleaseClosed E.ligaseSealingClosed))))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse