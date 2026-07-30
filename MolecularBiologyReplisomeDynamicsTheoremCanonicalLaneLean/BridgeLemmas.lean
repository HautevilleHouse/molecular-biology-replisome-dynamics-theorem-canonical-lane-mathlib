import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReplisomeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse