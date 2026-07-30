import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure HelicaseUnwindingPackage where
  replicationFork : Type u
  helicaseLoading : Prop
  unwindingRate : Prop
  atpHydrolysisCoupling : Prop
  singleStrandedBinding : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  helicaseLoadingClosed : H.helicaseLoading
  unwindingRateClosed : H.unwindingRate
  atpHydrolysisCouplingClosed : H.atpHydrolysisCoupling
  singleStrandedBindingClosed : H.singleStrandedBinding

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.helicaseLoading ∧ H.unwindingRate ∧ H.atpHydrolysisCoupling ∧ H.singleStrandedBinding

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingPackage) (E : HelicaseUnwindingEvidence H) : HelicaseUnwindingClosed H := by
  exact And.intro E.helicaseLoadingClosed (And.intro E.unwindingRateClosed (And.intro E.atpHydrolysisCouplingClosed E.singleStrandedBindingClosed))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse