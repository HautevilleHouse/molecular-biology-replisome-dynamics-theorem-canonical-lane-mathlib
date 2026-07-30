import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure OkazakiFragmentMaturationPackage where
  rnaPrimerRemoval : Prop
  fragmentLigation : Prop
  nickTranslationFidelity : Prop
  flapEndonucleaseActivity : Prop
  histoneReassembly : Prop

structure OkazakiFragmentMaturationEvidence (O : OkazakiFragmentMaturationPackage) where
  rnaPrimerRemovalClosed : O.rnaPrimerRemoval
  fragmentLigationClosed : O.fragmentLigation
  nickTranslationFidelityClosed : O.nickTranslationFidelity
  flapEndonucleaseActivityClosed : O.flapEndonucleaseActivity
  histoneReassemblyClosed : O.histoneReassembly

def OkazakiFragmentMaturationClosed (O : OkazakiFragmentMaturationPackage) : Prop :=
  O.rnaPrimerRemoval ∧ O.fragmentLigation ∧
  O.nickTranslationFidelity ∧ O.flapEndonucleaseActivity ∧
  O.histoneReassembly

theorem okazaki_fragment_maturation_closed_from_evidence
    (O : OkazakiFragmentMaturationPackage)
    (E : OkazakiFragmentMaturationEvidence O) : OkazakiFragmentMaturationClosed O := by
  exact And.intro E.rnaPrimerRemovalClosed
    (And.intro E.fragmentLigationClosed
      (And.intro E.nickTranslationFidelityClosed
        (And.intro E.flapEndonucleaseActivityClosed
          E.histoneReassemblyClosed)))

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse