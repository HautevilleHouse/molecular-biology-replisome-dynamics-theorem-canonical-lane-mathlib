import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

def ConstrainedReplisomeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_replisome_endgame (A : AdmissibleClass) :
    ConstrainedReplisomeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse