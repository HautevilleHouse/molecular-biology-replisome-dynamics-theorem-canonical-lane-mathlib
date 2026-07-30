import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ReplisomeAdmittedObject where
  space : ReplisomeSpace
  dnaReplicationModel : Prop
  bidirectionalReplisome : Prop
  helicaseUnwinding : Prop
  leadingLaggingStrand : Prop
  conclusion : dnaReplicationModel ∧ bidirectionalReplisome ∧ helicaseUnwinding ∧ leadingLaggingStrand

def ReplisomeWitnessClosed (O : ReplisomeAdmittedObject) : Prop :=
  O.dnaReplicationModel ∧ O.bidirectionalReplisome ∧ O.helicaseUnwinding ∧ O.leadingLaggingStrand

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse