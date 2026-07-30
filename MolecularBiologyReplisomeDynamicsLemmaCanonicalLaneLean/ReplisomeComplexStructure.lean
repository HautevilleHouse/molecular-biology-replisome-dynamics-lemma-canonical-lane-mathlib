import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean

structure ReplisomeComplexPackage where
  helicase : Type
  polymerase : Type
  slidingClamp : Type
  primase : Type
  helicaseFunction : Prop
  polymeraseFunction : Prop
  slidingClampFunction : Prop
  primaseFunction : Prop

structure ReplisomeComplexEvidence (C : ReplisomeComplexPackage) where
  helicaseFunctionClosed : C.helicaseFunction
  polymeraseFunctionClosed : C.polymeraseFunction
  slidingClampFunctionClosed : C.slidingClampFunction
  primaseFunctionClosed : C.primaseFunction

def ReplisomeComplexClosed (C : ReplisomeComplexPackage) : Prop :=
  C.helicaseFunction ∧ C.polymeraseFunction ∧ C.slidingClampFunction ∧ C.primaseFunction

theorem replisome_complex_closed_from_evidence (C : ReplisomeComplexPackage) (E : ReplisomeComplexEvidence C) :
    ReplisomeComplexClosed C := by
  exact And.intro E.helicaseFunctionClosed
    (And.intro E.polymeraseFunctionClosed
      (And.intro E.slidingClampFunctionClosed E.primaseFunctionClosed))

end MolecularBiologyReplisomeDynamicsLemmaCanonicalLaneLean
end HautevilleHouse