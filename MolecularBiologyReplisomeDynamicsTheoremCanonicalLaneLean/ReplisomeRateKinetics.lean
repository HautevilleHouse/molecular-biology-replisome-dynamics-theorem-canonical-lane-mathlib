import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeRateKineticsPackage where
  dnaTemplate : Type u
  polDnaBindingRate : Prop
  nucleotideAdditionRate : Prop
  proofreadingRate : Prop
  translocationRate : Prop

structure ReplisomeRateKineticsEvidence (R : ReplisomeRateKineticsPackage) where
  polDnaBindingRateClosed : R.polDnaBindingRate
  nucleotideAdditionRateClosed : R.nucleotideAdditionRate
  proofreadingRateClosed : R.proofreadingRate
  translocationRateClosed : R.translocationRate

def ReplisomeRateKineticsClosed (R : ReplisomeRateKineticsPackage) : Prop :=
  R.polDnaBindingRate ∧ R.nucleotideAdditionRate ∧ R.proofreadingRate ∧ R.translocationRate

theorem replisome_rate_kinetics_closed_from_evidence (R : ReplisomeRateKineticsPackage) (E : ReplisomeRateKineticsEvidence R) : ReplisomeRateKineticsClosed R := by
  exact And.intro E.polDnaBindingRateClosed (And.intro E.nucleotideAdditionRateClosed (And.intro E.proofreadingRateClosed E.translocationRateClosed))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse