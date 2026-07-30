import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeAssemblyPackage where
  originBinding : Prop
  helicaseLoading : Prop
  polymeraseRecruitment : Prop
  clampLoading : Prop
  assemblyOrder : Prop

structure ReplisomeAssemblyEvidence (R : ReplisomeAssemblyPackage) where
  originBindingClosed : R.originBinding
  helicaseLoadingClosed : R.helicaseLoading
  polymeraseRecruitmentClosed : R.polymeraseRecruitment
  clampLoadingClosed : R.clampLoading
  assemblyOrderClosed : R.assemblyOrder

def ReplisomeAssemblyClosed (R : ReplisomeAssemblyPackage) : Prop :=
  R.originBinding ∧ R.helicaseLoading ∧ R.polymeraseRecruitment ∧ R.clampLoading ∧ R.assemblyOrder

theorem replisome_assembly_closed_from_evidence (R : ReplisomeAssemblyPackage) (E : ReplisomeAssemblyEvidence R) :
    ReplisomeAssemblyClosed R := by
  exact And.intro E.originBindingClosed
    (And.intro E.helicaseLoadingClosed
      (And.intro E.polymeraseRecruitmentClosed
        (And.intro E.clampLoadingClosed E.assemblyOrderClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse