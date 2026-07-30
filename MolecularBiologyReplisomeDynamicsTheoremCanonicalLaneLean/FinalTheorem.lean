import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean.ReplisomeDynamicsAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

def ConstrainedReplisomeClosure (A : ReplisomeAdmissibleClass) : Prop :=
  replisomeBridgeClosed A ∧ replisomeGateClosed A

theorem constrained_replisome_endgame (A : ReplisomeAdmissibleClass) : ConstrainedReplisomeClosure A := by
  exact And.intro (replisome_bridge_from_admissible_class A) (replisome_gate_from_admissible_class A)

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse