import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure FidelityPackage (R : ReplisomeCorePackage) where
  proofreadingActivity : Prop
  mismatchRepair : Prop
  errorRateBound : Prop
  strandDiscrimination : Prop

structure FidelityEvidence {R : ReplisomeCorePackage} (F : FidelityPackage R) where
  proofreadingActivityClosed : F.proofreadingActivity
  mismatchRepairClosed : F.mismatchRepair
  errorRateBoundClosed : F.errorRateBound
  strandDiscriminationClosed : F.strandDiscrimination

def FidelityClosed {R : ReplisomeCorePackage} (F : FidelityPackage R) : Prop :=
  F.proofreadingActivity ∧ F.mismatchRepair ∧ F.errorRateBound ∧ F.strandDiscrimination

theorem fidelity_closed_from_evidence {R : ReplisomeCorePackage} (F : FidelityPackage R) (E : FidelityEvidence F) : FidelityClosed F := by
  exact And.intro E.proofreadingActivityClosed
    (And.intro E.mismatchRepairClosed
      (And.intro E.errorRateBoundClosed E.strandDiscriminationClosed))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse