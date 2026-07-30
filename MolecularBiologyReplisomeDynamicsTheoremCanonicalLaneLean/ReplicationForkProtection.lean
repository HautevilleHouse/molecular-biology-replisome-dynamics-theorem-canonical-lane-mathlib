import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplicationForkProtectionPackage where
  checkpointActivation : Prop
  forkStabilization : Prop
  dnaRepairRecruitment : Prop
  lesionBypass : Prop
  replicationRestart : Prop

structure ReplicationForkProtectionEvidence (R : ReplicationForkProtectionPackage) where
  checkpointActivationClosed : R.checkpointActivation
  forkStabilizationClosed : R.forkStabilization
  dnaRepairRecruitmentClosed : R.dnaRepairRecruitment
  lesionBypassClosed : R.lesionBypass
  replicationRestartClosed : R.replicationRestart

def ReplicationForkProtectionClosed (R : ReplicationForkProtectionPackage) : Prop :=
  R.checkpointActivation ∧ R.forkStabilization ∧ R.dnaRepairRecruitment ∧ R.lesionBypass ∧ R.replicationRestart

theorem replication_fork_protection_closed_from_evidence (R : ReplicationForkProtectionPackage) (E : ReplicationForkProtectionEvidence R) :
    ReplicationForkProtectionClosed R := by
  exact And.intro E.checkpointActivationClosed
    (And.intro E.forkStabilizationClosed
      (And.intro E.dnaRepairRecruitmentClosed
        (And.intro E.lesionBypassClosed E.replicationRestartClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse