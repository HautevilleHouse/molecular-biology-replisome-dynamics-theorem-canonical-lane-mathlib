import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplisomeComponents

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplicationDynamicsPackage (R : ReplisomeAssembly) where
  leadingStrandSynthesis : Prop
  laggingStrandOkazakiFragments : Prop
  unwindingRate : Prop
  nucleotideIncorporation : Prop
  proofreadingActivity : Prop

structure ReplicationDynamicsEvidence {R : ReplisomeAssembly} (D : ReplicationDynamicsPackage R) where
  leadingStrandSynthesisClosed : D.leadingStrandSynthesis
  laggingStrandOkazakiFragmentsClosed : D.laggingStrandOkazakiFragments
  unwindingRateClosed : D.unwindingRate
  nucleotideIncorporationClosed : D.nucleotideIncorporation
  proofreadingActivityClosed : D.proofreadingActivity

def ReplicationDynamicsClosed {R : ReplisomeAssembly} (D : ReplicationDynamicsPackage R) : Prop :=
  D.leadingStrandSynthesis ∧ D.laggingStrandOkazakiFragments ∧ D.unwindingRate ∧ D.nucleotideIncorporation ∧ D.proofreadingActivity

theorem replication_dynamics_closed_from_evidence
    {R : ReplisomeAssembly} (D : ReplicationDynamicsPackage R) (E : ReplicationDynamicsEvidence D) :
    ReplicationDynamicsClosed D := by
  exact And.intro E.leadingStrandSynthesisClosed
    (And.intro E.laggingStrandOkazakiFragmentsClosed
      (And.intro E.unwindingRateClosed
        (And.intro E.nucleotideIncorporationClosed E.proofreadingActivityClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse