import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure CoordinationPackage (R : ReplisomeCorePackage) where
  helicasePrimaseCoupling : Prop
  unwindingRateMatchesPriming : Prop
  conformationalSwitch : Prop

structure CoordinationEvidence {R : ReplisomeCorePackage} (C : CoordinationPackage R) where
  helicasePrimaseCouplingClosed : C.helicasePrimaseCoupling
  unwindingRateMatchesPrimingClosed : C.unwindingRateMatchesPriming
  conformationalSwitchClosed : C.conformationalSwitch

def CoordinationClosed {R : ReplisomeCorePackage} (C : CoordinationPackage R) : Prop :=
  C.helicasePrimaseCoupling ∧ C.unwindingRateMatchesPriming ∧ C.conformationalSwitch

theorem coordination_closed_from_evidence {R : ReplisomeCorePackage} (C : CoordinationPackage R) (E : CoordinationEvidence C) : CoordinationClosed C := by
  exact And.intro E.helicasePrimaseCouplingClosed
    (And.intro E.unwindingRateMatchesPrimingClosed E.conformationalSwitchClosed)

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse