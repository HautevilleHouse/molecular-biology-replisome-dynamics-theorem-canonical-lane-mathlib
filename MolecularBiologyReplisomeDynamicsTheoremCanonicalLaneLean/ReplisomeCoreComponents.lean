import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeCorePackage where
  helicase : Type
  primase : Type
  dnaPolymerase : Type
  slidingClamp : Type
  clampLoader : Type
  helicaseFunctionValid : Prop
  primaseFunctionValid : Prop
  dnaPolymeraseFunctionValid : Prop
  slidingClampFunctionValid : Prop
  clampLoaderFunctionValid : Prop

structure ReplisomeCoreEvidence (R : ReplisomeCorePackage) where
  helicaseFunctionValidClosed : R.helicaseFunctionValid
  primaseFunctionValidClosed : R.primaseFunctionValid
  dnaPolymeraseFunctionValidClosed : R.dnaPolymeraseFunctionValid
  slidingClampFunctionValidClosed : R.slidingClampFunctionValid
  clampLoaderFunctionValidClosed : R.clampLoaderFunctionValid

def ReplisomeCoreClosed (R : ReplisomeCorePackage) : Prop :=
  R.helicaseFunctionValid ∧ R.primaseFunctionValid ∧ R.dnaPolymeraseFunctionValid ∧ R.slidingClampFunctionValid ∧ R.clampLoaderFunctionValid

theorem replisome_core_closed_from_evidence (R : ReplisomeCorePackage) (E : ReplisomeCoreEvidence R) : ReplisomeCoreClosed R := by
  exact And.intro E.helicaseFunctionValidClosed
    (And.intro E.primaseFunctionValidClosed
      (And.intro E.dnaPolymeraseFunctionValidClosed
        (And.intro E.slidingClampFunctionValidClosed E.clampLoaderFunctionValidClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse