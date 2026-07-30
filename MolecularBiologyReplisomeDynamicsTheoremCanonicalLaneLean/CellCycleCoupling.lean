import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure CellCycleCouplingPackage where
  sPhaseInitiation : Prop
  originLicensing : Prop
  cdkRegulation : Prop
  checkpointActivation : Prop
  replicationTimingControl : Prop

def CellCycleCouplingClosed (P : CellCycleCouplingPackage) : Prop :=
  P.sPhaseInitiation ∧ P.originLicensing ∧ P.cdkRegulation ∧ P.checkpointActivation ∧ P.replicationTimingControl

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse