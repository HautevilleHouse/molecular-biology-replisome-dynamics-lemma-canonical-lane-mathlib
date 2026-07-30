import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ClampLoadersAndProcessivityPackage (C : ReplisomeCorePackage) where
  clampLoaderRecruitment : Prop
  clampOpening : Prop
  clampLoadingOntoDNA : Prop
  polymeraseClampInteraction : Prop
  processivityEnhancement : Prop
  clampRelease : Prop

structure ClampLoadersAndProcessivityEvidence {C : ReplisomeCorePackage} (L : ClampLoadersAndProcessivityPackage C) where
  clampLoaderRecruitmentClosed : L.clampLoaderRecruitment
  clampOpeningClosed : L.clampOpening
  clampLoadingOntoDNAClosed : L.clampLoadingOntoDNA
  polymeraseClampInteractionClosed : L.polymeraseClampInteraction
  processivityEnhancementClosed : L.processivityEnhancement
  clampReleaseClosed : L.clampRelease

def ClampLoadersAndProcessivityClosed {C : ReplisomeCorePackage} (L : ClampLoadersAndProcessivityPackage C) : Prop :=
  L.clampLoaderRecruitment ∧ L.clampOpening ∧ L.clampLoadingOntoDNA ∧
  L.polymeraseClampInteraction ∧ L.processivityEnhancement ∧ L.clampRelease

theorem clamp_loaders_and_processivity_closed_from_evidence {C : ReplisomeCorePackage} (L : ClampLoadersAndProcessivityPackage C) (E : ClampLoadersAndProcessivityEvidence L) : ClampLoadersAndProcessivityClosed L := by
  exact And.intro E.clampLoaderRecruitmentClosed (And.intro E.clampOpeningClosed (And.intro E.clampLoadingOntoDNAClosed (And.intro E.polymeraseClampInteractionClosed (And.intro E.processivityEnhancementClosed E.clampReleaseClosed))))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse