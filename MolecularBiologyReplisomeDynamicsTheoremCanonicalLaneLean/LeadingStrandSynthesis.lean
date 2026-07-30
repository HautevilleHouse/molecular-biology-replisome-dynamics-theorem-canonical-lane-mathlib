import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure LeadingStrandSynthesisPackage where
  continuousSynthesis : Prop
  polymeraseEpsilonActivity : Prop
  proofreading : Prop
  processivity : Prop
  coordinationWithHelicase : Prop

structure LeadingStrandSynthesisEvidence (L : LeadingStrandSynthesisPackage) where
  continuousSynthesisClosed : L.continuousSynthesis
  polymeraseEpsilonActivityClosed : L.polymeraseEpsilonActivity
  proofreadingClosed : L.proofreading
  processivityClosed : L.processivity
  coordinationWithHelicaseClosed : L.coordinationWithHelicase

def LeadingStrandSynthesisClosed (L : LeadingStrandSynthesisPackage) : Prop :=
  L.continuousSynthesis ∧ L.polymeraseEpsilonActivity ∧ L.proofreading ∧ L.processivity ∧ L.coordinationWithHelicase

theorem leading_strand_synthesis_closed_from_evidence (L : LeadingStrandSynthesisPackage) (E : LeadingStrandSynthesisEvidence L) :
    LeadingStrandSynthesisClosed L := by
  exact And.intro E.continuousSynthesisClosed
    (And.intro E.polymeraseEpsilonActivityClosed
      (And.intro E.proofreadingClosed
        (And.intro E.processivityClosed E.coordinationWithHelicaseClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse