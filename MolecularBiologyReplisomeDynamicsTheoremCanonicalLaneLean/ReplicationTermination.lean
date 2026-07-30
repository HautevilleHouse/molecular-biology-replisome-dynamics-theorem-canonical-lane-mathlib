import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplicationTerminationPackage where
  terminationSite : Type u
  replicationForkConvergence : Prop
  decatenation : Prop
  chromosomeSegregation : Prop

structure ReplicationTerminationEvidence (T : ReplicationTerminationPackage) where
  replicationForkConvergenceClosed : T.replicationForkConvergence
  decatenationClosed : T.decatenation
  chromosomeSegregationClosed : T.chromosomeSegregation

def ReplicationTerminationClosed (T : ReplicationTerminationPackage) : Prop :=
  T.replicationForkConvergence ∧ T.decatenation ∧ T.chromosomeSegregation

theorem replication_termination_closed_from_evidence (T : ReplicationTerminationPackage) (E : ReplicationTerminationEvidence T) : ReplicationTerminationClosed T := by
  exact And.intro E.replicationForkConvergenceClosed (And.intro E.decatenationClosed E.chromosomeSegregationClosed)

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse