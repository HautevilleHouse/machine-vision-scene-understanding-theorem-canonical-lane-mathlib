import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure SceneDepthNormalsPackage where
  depthMap : Type u
  normalMap : Type v
  depthConsistency : Prop
  normalConsistency : Prop
  crossModalAlignment : Prop

structure SceneDepthNormalsEvidence (P : SceneDepthNormalsPackage) where
  depthConsistencyClosed : P.depthConsistency
  normalConsistencyClosed : P.normalConsistency
  crossModalAlignmentClosed : P.crossModalAlignment

def SceneDepthNormalsClosed (P : SceneDepthNormalsPackage) : Prop :=
  P.depthConsistency ∧ P.normalConsistency ∧ P.crossModalAlignment

theorem scene_depth_normals_closed_from_evidence (P : SceneDepthNormalsPackage)
    (E : SceneDepthNormalsEvidence P) : SceneDepthNormalsClosed P := by
  exact And.intro E.depthConsistencyClosed
    (And.intro E.normalConsistencyClosed E.crossModalAlignmentClosed)

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse
