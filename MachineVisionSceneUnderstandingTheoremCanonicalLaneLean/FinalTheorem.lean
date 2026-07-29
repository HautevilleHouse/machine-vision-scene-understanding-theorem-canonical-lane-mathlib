import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

def ConstrainedSceneUnderstandingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrainedSceneUnderstanding_endgame (A : AdmissibleClass) : ConstrainedSceneUnderstandingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse
