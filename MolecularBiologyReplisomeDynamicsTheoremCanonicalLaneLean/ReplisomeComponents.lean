import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeAssembly where
  helicaseLoaded : Prop
  primaseRecruited : Prop
  polymeraseActive : Prop
  slidingClampLoaded : Prop
  replicationForkEstablished : Prop
  helicaseLoadedTerm : helicaseLoaded
  primaseRecruitedTerm : primaseRecruited
  polymeraseActiveTerm : polymeraseActive
  slidingClampLoadedTerm : slidingClampLoaded
  replicationForkEstablishedTerm : replicationForkEstablished

structure ReplisomeAssemblyEvidence (R : ReplisomeAssembly) where
  helicaseLoadedClosed : R.helicaseLoaded
  primaseRecruitedClosed : R.primaseRecruited
  polymeraseActiveClosed : R.polymeraseActive
  slidingClampLoadedClosed : R.slidingClampLoaded
  replicationForkEstablishedClosed : R.replicationForkEstablished

def ReplisomeAssemblyClosed (R : ReplisomeAssembly) : Prop :=
  R.helicaseLoaded ∧ R.primaseRecruited ∧ R.polymeraseActive ∧ R.slidingClampLoaded ∧ R.replicationForkEstablished

theorem replisome_assembly_closed_from_evidence (R : ReplisomeAssembly) (E : ReplisomeAssemblyEvidence R) :
    ReplisomeAssemblyClosed R := by
  exact And.intro E.helicaseLoadedClosed
    (And.intro E.primaseRecruitedClosed
      (And.intro E.polymeraseActiveClosed
        (And.intro E.slidingClampLoadedClosed E.replicationForkEstablishedClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse