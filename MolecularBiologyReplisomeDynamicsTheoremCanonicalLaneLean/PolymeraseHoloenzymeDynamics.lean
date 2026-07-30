import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure PolymeraseHoloenzymePackage where
  leadingStrandCatalysis : Prop
  laggingStrandExtension : Prop
  proofreadingActivity : Prop
  clampBindingAffinity : Prop
  nucleotideSelectionFidelity : Prop

structure PolymeraseHoloenzymeEvidence (P : PolymeraseHoloenzymePackage) where
  leadingStrandCatalysisClosed : P.leadingStrandCatalysis
  laggingStrandExtensionClosed : P.laggingStrandExtension
  proofreadingActivityClosed : P.proofreadingActivity
  clampBindingAffinityClosed : P.clampBindingAffinity
  nucleotideSelectionFidelityClosed : P.nucleotideSelectionFidelity

def PolymeraseHoloenzymeClosed (P : PolymeraseHoloenzymePackage) : Prop :=
  P.leadingStrandCatalysis ∧ P.laggingStrandExtension ∧
  P.proofreadingActivity ∧ P.clampBindingAffinity ∧
  P.nucleotideSelectionFidelity

theorem polymerase_holoenzyme_closed_from_evidence (P : PolymeraseHoloenzymePackage)
    (E : PolymeraseHoloenzymeEvidence P) : PolymeraseHoloenzymeClosed P := by
  exact And.intro E.leadingStrandCatalysisClosed
    (And.intro E.laggingStrandExtensionClosed
      (And.intro E.proofreadingActivityClosed
        (And.intro E.clampBindingAffinityClosed
          E.nucleotideSelectionFidelityClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse