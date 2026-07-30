import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeDisassemblyPackage where
  terminationSignal : Prop
  helicaseUnloading : Prop
  polymeraseDetachment : Prop
  clampRemoval : Prop
  recycling : Prop

structure ReplisomeDisassemblyEvidence (R : ReplisomeDisassemblyPackage) where
  terminationSignalClosed : R.terminationSignal
  helicaseUnloadingClosed : R.helicaseUnloading
  polymeraseDetachmentClosed : R.polymeraseDetachment
  clampRemovalClosed : R.clampRemoval
  recyclingClosed : R.recycling

def ReplisomeDisassemblyClosed (R : ReplisomeDisassemblyPackage) : Prop :=
  R.terminationSignal ∧ R.helicaseUnloading ∧ R.polymeraseDetachment ∧ R.clampRemoval ∧ R.recycling

theorem replisome_disassembly_closed_from_evidence (R : ReplisomeDisassemblyPackage) (E : ReplisomeDisassemblyEvidence R) :
    ReplisomeDisassemblyClosed R := by
  exact And.intro E.terminationSignalClosed
    (And.intro E.helicaseUnloadingClosed
      (And.intro E.polymeraseDetachmentClosed
        (And.intro E.clampRemovalClosed E.recyclingClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse