import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ClampLoadersPackage where
  slidingClamp : Type u
  clampLoadingATP : Prop
  clampClosing : Prop
  clampOpening : Prop
  polymeraseBinding : Prop

structure ClampLoadersEvidence (C : ClampLoadersPackage) where
  clampLoadingATPClosed : C.clampLoadingATP
  clampClosingClosed : C.clampClosing
  clampOpeningClosed : C.clampOpening
  polymeraseBindingClosed : C.polymeraseBinding

def ClampLoadersClosed (C : ClampLoadersPackage) : Prop :=
  C.clampLoadingATP ∧ C.clampClosing ∧ C.clampOpening ∧ C.polymeraseBinding

theorem clamp_loaders_closed_from_evidence (C : ClampLoadersPackage) (E : ClampLoadersEvidence C) : ClampLoadersClosed C := by
  exact And.intro E.clampLoadingATPClosed (And.intro E.clampClosingClosed (And.intro E.clampOpeningClosed E.polymeraseBindingClosed))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse