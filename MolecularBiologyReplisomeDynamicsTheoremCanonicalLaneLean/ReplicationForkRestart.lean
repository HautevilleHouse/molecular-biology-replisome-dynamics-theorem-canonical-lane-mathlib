import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplicationForkRestartPackage where
  forkStabilization : Prop
  damageBypassMechanisms : Prop
  reprimingAfterStall : Prop
  homologousRecombinationRepair : Prop

def ReplicationForkRestartClosed (P : ReplicationForkRestartPackage) : Prop :=
  P.forkStabilization ∧ P.damageBypassMechanisms ∧ P.reprimingAfterStall ∧ P.homologousRecombinationRepair

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse