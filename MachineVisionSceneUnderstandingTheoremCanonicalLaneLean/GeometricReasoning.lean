import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure GeometricReasoningPackage where
  cameraPose : Type u
  3dStructure : Type v
  poseConsistency : Prop
  structureConsistency : Prop
  projectiveGeometry : Prop

structure GeometricReasoningEvidence (G : GeometricReasoningPackage) where
  poseConsistencyClosed : G.poseConsistency
  structureConsistencyClosed : G.structureConsistency
  projectiveGeometryClosed : G.projectiveGeometry

def GeometricReasoningClosed (G : GeometricReasoningPackage) : Prop :=
  G.poseConsistency ∧ G.structureConsistency ∧ G.projectiveGeometry

theorem geometric_reasoning_closed_from_evidence (G : GeometricReasoningPackage)
    (E : GeometricReasoningEvidence G) : GeometricReasoningClosed G := by
  exact And.intro E.poseConsistencyClosed
    (And.intro E.structureConsistencyClosed E.projectiveGeometryClosed)

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse
