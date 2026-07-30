import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure PolymeraseHoloenzyme where
  holoPoint : Type
  catalyticSubunit : Type
  clampLoader : Type
  slidingClamp : Type
  exonucleaseProofreading : Prop
  strandSeparation : Prop
  exonucleaseProofreadingTerm : exonucleaseProofreading
  strandSeparationTerm : strandSeparation

structure NucleotidePool where
  dNTPTypes : Type
  concentration : Nat
  ratioBalanced : Prop
  ratioBalancedTerm : ratioBalanced

structure PrimerTemplateJunction where
  templateStrand : Type
  primerStrand : Type
  basePairing : Prop
  free3PrimeOH : Prop
  basePairingTerm : basePairing
  free3PrimeOHTerm : free3PrimeOH

structure LeadingLaggingStrandConfig where
  leadingStrand : Type
  laggingStrand : Type
  okazakiFragments : Type
  continuousSynthesis : Prop
  discontinuousSynthesis : Prop
  continuousSynthesisTerm : continuousSynthesis
  discontinuousSynthesisTerm : discontinuousSynthesis

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
