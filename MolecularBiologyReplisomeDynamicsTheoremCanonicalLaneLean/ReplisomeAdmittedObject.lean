import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean

structure ReplisomeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ReplisomeAdmittedObject where
  space : ReplisomeSpace
  nascentLeadingStrandSynthesis : Prop
  laggingStrandMaturation : Prop
  helicaseUnwinding : Prop
  polymeraseHolobound : Prop
  clampLoaderRecruitment : Prop
  okazakiFragmentProcessing : Prop
  conclusion : nascentLeadingStrandSynthesis ∧ laggingStrandMaturation ∧ helicaseUnwinding ∧
    polymeraseHolobound ∧ clampLoaderRecruitment ∧ okazakiFragmentProcessing

structure ReplisomeEndgameState where
  object : ReplisomeAdmittedObject

def ReplisomeWitnessClosed (O : ReplisomeAdmittedObject) : Prop :=
  O.nascentLeadingStrandSynthesis ∧ O.laggingStrandMaturation ∧
  O.helicaseUnwinding ∧ O.polymeraseHolobound ∧
  O.clampLoaderRecruitment ∧ O.okazakiFragmentProcessing

end MolecularBiologyReplisomeDynamicsTheoremCanonicalLaneLean
end HautevilleHouse