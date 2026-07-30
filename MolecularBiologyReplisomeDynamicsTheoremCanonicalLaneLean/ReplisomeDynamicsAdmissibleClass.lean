import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplisomeCoreComponents
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.LaggingStrandSynthesis
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.HelicasePrimaseCoordination
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplicationFidelity

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeAdmittedObject where
  core : ReplisomeCorePackage
  coreEvidence : ReplisomeCoreEvidence core
  lagging : LaggingStrandPackage core
  laggingEvidence : LaggingStrandEvidence lagging
  coordination : CoordinationPackage core
  coordinationEvidence : CoordinationEvidence coordination
  fidelity : FidelityPackage core
  fidelityEvidence : FidelityEvidence fidelity
  allClosed : Prop
  allClosedTerm : allClosed

structure ReplisomeAdmissibleClass where
  object : ReplisomeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def replisomeBridgeClosed (A : ReplisomeAdmissibleClass) : Prop :=
  A.object.allClosed

theorem replisome_bridge_from_admissible_class (A : ReplisomeAdmissibleClass) : replisomeBridgeClosed A := by
  exact A.object.allClosedTerm

def replisomeGateClosed (A : ReplisomeAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem replisome_gate_from_admissible_class (A : ReplisomeAdmissibleClass) : replisomeGateClosed A := by
  exact A.gateWitness

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse