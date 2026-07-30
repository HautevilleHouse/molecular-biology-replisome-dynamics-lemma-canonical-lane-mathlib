import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure DNAUnwindingPackage where
  helicaseRate : ℝ
  basePairUnwinding : ℝ → ℝ
  torsionalStress : Prop
  unwindingProcessivity : Prop

structure DNAUnwindingEvidence (D : DNAUnwindingPackage) where
  helicaseRateClosed : D.helicaseRate > 0
  basePairUnwindingClosed : D.basePairUnwinding 0 = 0
  torsionalStressClosed : D.torsionalStress
  unwindingProcessivityClosed : D.unwindingProcessivity

def DNAUnwindingClosed (D : DNAUnwindingPackage) : Prop :=
  D.helicaseRate > 0 ∧ D.basePairUnwinding 0 = 0 ∧ D.torsionalStress ∧ D.unwindingProcessivity

theorem dna_unwinding_closed_from_evidence (D : DNAUnwindingPackage) (E : DNAUnwindingEvidence D) :
    DNAUnwindingClosed D := by
  exact And.intro E.helicaseRateClosed
    (And.intro E.basePairUnwindingClosed
      (And.intro E.torsionalStressClosed E.unwindingProcessivityClosed))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse