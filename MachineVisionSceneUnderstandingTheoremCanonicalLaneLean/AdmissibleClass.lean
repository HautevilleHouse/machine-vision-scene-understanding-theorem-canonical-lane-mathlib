import HautevilleHouse.MachineVisionSceneUnderstandingTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : VisionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VisionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse