import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplisomeCoreComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure LaggingStrandPackage (R : ReplisomeCorePackage) where
  okazakiFragmentFormation : Prop
  rnaPrimerRemoval : Prop
  fragmentLigation : Prop
  discontinuousSynthesis : Prop

structure LaggingStrandEvidence {R : ReplisomeCorePackage} (L : LaggingStrandPackage R) where
  okazakiFragmentFormationClosed : L.okazakiFragmentFormation
  rnaPrimerRemovalClosed : L.rnaPrimerRemoval
  fragmentLigationClosed : L.fragmentLigation
  discontinuousSynthesisClosed : L.discontinuousSynthesis

def LaggingStrandClosed {R : ReplisomeCorePackage} (L : LaggingStrandPackage R) : Prop :=
  L.okazakiFragmentFormation ∧ L.rnaPrimerRemoval ∧ L.fragmentLigation ∧ L.discontinuousSynthesis

theorem lagging_strand_closed_from_evidence {R : ReplisomeCorePackage} (L : LaggingStrandPackage R) (E : LaggingStrandEvidence L) : LaggingStrandClosed L := by
  exact And.intro E.okazakiFragmentFormationClosed
    (And.intro E.rnaPrimerRemovalClosed
      (And.intro E.fragmentLigationClosed E.discontinuousSynthesisClosed))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse