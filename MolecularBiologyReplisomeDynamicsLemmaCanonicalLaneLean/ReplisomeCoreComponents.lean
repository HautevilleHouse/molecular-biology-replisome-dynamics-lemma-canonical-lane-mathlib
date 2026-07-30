import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplisomeCorePackage where
  helicaseUnwindingRate : Prop
  polymeraseElongationRate : Prop
  clampLoaderEfficiency : Prop
  primaseInitiationRate : Prop
  okazakiFragmentLengthDistribution : Prop

def ReplisomeCoreComponents (R : ReplisomeCorePackage) : Prop :=
  R.helicaseUnwindingRate ∧ R.polymeraseElongationRate ∧
  R.clampLoaderEfficiency ∧ R.primaseInitiationRate ∧
  R.okazakiFragmentLengthDistribution

structure ReplisomeCoreEvidence (R : ReplisomeCorePackage) where
  helicaseUnwindingRateClosed : R.helicaseUnwindingRate
  polymeraseElongationRateClosed : R.polymeraseElongationRate
  clampLoaderEfficiencyClosed : R.clampLoaderEfficiency
  primaseInitiationRateClosed : R.primaseInitiationRate
  okazakiFragmentLengthDistributionClosed : R.okazakiFragmentLengthDistribution

theorem replisome_core_components_from_evidence (R : ReplisomeCorePackage) (E : ReplisomeCoreEvidence R) : ReplisomeCoreComponents R := by
  exact And.intro E.helicaseUnwindingRateClosed
    (And.intro E.polymeraseElongationRateClosed
      (And.intro E.clampLoaderEfficiencyClosed
        (And.intro E.primaseInitiationRateClosed
          E.okazakiFragmentLengthDistributionClosed)))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
