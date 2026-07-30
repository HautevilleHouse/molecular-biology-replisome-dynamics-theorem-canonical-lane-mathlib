import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure OkazakiFragmentProcessingPackage where
  laggingStrandSynthesis : Prop
  primerRemoval : Prop
  gapFilling : Prop
  ligation : Prop

structure OkazakiFragmentProcessingEvidence (O : OkazakiFragmentProcessingPackage) where
  laggingStrandSynthesisClosed : O.laggingStrandSynthesis
  primerRemovalClosed : O.primerRemoval
  gapFillingClosed : O.gapFilling
  ligationClosed : O.ligation

def OkazakiFragmentProcessingClosed (O : OkazakiFragmentProcessingPackage) : Prop :=
  O.laggingStrandSynthesis ∧ O.primerRemoval ∧ O.gapFilling ∧ O.ligation

theorem okazaki_fragment_processing_closed_from_evidence (O : OkazakiFragmentProcessingPackage) (E : OkazakiFragmentProcessingEvidence O) : OkazakiFragmentProcessingClosed O := by
  exact And.intro E.laggingStrandSynthesisClosed (And.intro E.primerRemovalClosed (And.intro E.gapFillingClosed E.ligationClosed))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse