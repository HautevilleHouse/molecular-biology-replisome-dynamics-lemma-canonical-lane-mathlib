import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplicationForkStability

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure OkazakiFragmentProcessingPackage where
  rnaPrimerRemoval : Prop
  gapFillingByPolymerase : Prop
  ligaseSealing : Prop
  maturationEfficiency : Prop

structure OkazakiFragmentProcessingEvidence (R : OkazakiFragmentProcessingPackage) where
  rnaPrimerRemovalClosed : R.rnaPrimerRemoval
  gapFillingByPolymeraseClosed : R.gapFillingByPolymerase
  ligaseSealingClosed : R.ligaseSealing
  maturationEfficiencyClosed : R.maturationEfficiency

def OkazakiFragmentProcessingClosed (R : OkazakiFragmentProcessingPackage) : Prop :=
  R.rnaPrimerRemoval ∧ R.gapFillingByPolymerase ∧
  R.ligaseSealing ∧ R.maturationEfficiency

theorem okazaki_fragment_processing_closed_from_evidence (R : OkazakiFragmentProcessingPackage) (E : OkazakiFragmentProcessingEvidence R) : OkazakiFragmentProcessingClosed R := by
  exact And.intro E.rnaPrimerRemovalClosed
    (And.intro E.gapFillingByPolymeraseClosed
      (And.intro E.ligaseSealingClosed E.maturationEfficiencyClosed))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
