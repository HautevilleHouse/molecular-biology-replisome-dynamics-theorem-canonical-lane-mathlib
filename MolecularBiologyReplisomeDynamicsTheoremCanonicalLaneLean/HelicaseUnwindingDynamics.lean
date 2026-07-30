import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure HelicaseUnwindingPackage where
  processiveUnwindingRate : Prop
  atpHydrolysisCoupling : Prop
  strandSeparationEfficiency : Prop
  singleStrandedBindingStabilization : Prop
  replicationForkProgression : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  processiveUnwindingRateClosed : H.processiveUnwindingRate
  atpHydrolysisCouplingClosed : H.atpHydrolysisCoupling
  strandSeparationEfficiencyClosed : H.strandSeparationEfficiency
  singleStrandedBindingStabilizationClosed : H.singleStrandedBindingStabilization
  replicationForkProgressionClosed : H.replicationForkProgression

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.processiveUnwindingRate ∧ H.atpHydrolysisCoupling ∧
  H.strandSeparationEfficiency ∧ H.singleStrandedBindingStabilization ∧
  H.replicationForkProgression

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingPackage)
    (E : HelicaseUnwindingEvidence H) : HelicaseUnwindingClosed H := by
  exact And.intro E.processiveUnwindingRateClosed
    (And.intro E.atpHydrolysisCouplingClosed
      (And.intro E.strandSeparationEfficiencyClosed
        (And.intro E.singleStrandedBindingStabilizationClosed
          E.replicationForkProgressionClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse