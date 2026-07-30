import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplisomeStochasticProcess (A : AdmissibleClass) where
  nucleotideBinding : Prop
  polymerasePause : Prop
  misincorporation : Prop
  exonucleaseProofreading : Prop
  lesionBypass : Prop
  forkStalling : Prop
  restartMechanisms : Prop
  processivityMaintained : Prop

structure ReplisomeStochasticEvidence (A : AdmissibleClass) (P : ReplisomeStochasticProcess A) where
  nucleotideBindingClosed : P.nucleotideBinding
  polymerasePauseClosed : P.polymerasePause
  misincorporationClosed : P.misincorporation
  exonucleaseProofreadingClosed : P.exonucleaseProofreading
  lesionBypassClosed : P.lesionBypass
  forkStallingClosed : P.forkStalling
  restartMechanismsClosed : P.restartMechanisms
  processivityMaintainedClosed : P.processivityMaintained

def ReplisomeStochasticClosed (A : AdmissibleClass) (P : ReplisomeStochasticProcess A) : Prop :=
  P.nucleotideBinding ∧ P.polymerasePause ∧ P.misincorporation ∧
  P.exonucleaseProofreading ∧ P.lesionBypass ∧ P.forkStalling ∧
  P.restartMechanisms ∧ P.processivityMaintained

theorem replisome_stochastic_closed_from_evidence (A : AdmissibleClass) (P : ReplisomeStochasticProcess A)
    (E : ReplisomeStochasticEvidence A P) : ReplisomeStochasticClosed A P := by
  exact And.intro E.nucleotideBindingClosed
    (And.intro E.polymerasePauseClosed
      (And.intro E.misincorporationClosed
        (And.intro E.exonucleaseProofreadingClosed
          (And.intro E.lesionBypassClosed
            (And.intro E.forkStallingClosed
              (And.intro E.restartMechanismsClosed E.processivityMaintainedClosed))))))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse
