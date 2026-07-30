import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeCoreEvidence (P : ReplisomeCorePackage) where
  helicaseUnwindingRateClosed : P.helicaseUnwindingRate
  polymeraseElongationRateClosed : P.polymeraseElongationRate
  primaseInitiationRateClosed : P.primaseInitiationRate
  slidingClampProcessivityClosed : P.slidingClampProcessivity
  leadingLaggingCoordinationClosed : P.leadingLaggingCoordination

theorem replisome_core_closed_from_evidence (P : ReplisomeCorePackage) (E : ReplisomeCoreEvidence P) : ReplisomeCoreClosed P := by
  exact And.intro E.helicaseUnwindingRateClosed
    (And.intro E.polymeraseElongationRateClosed
      (And.intro E.primaseInitiationRateClosed
        (And.intro E.slidingClampProcessivityClosed E.leadingLaggingCoordinationClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse