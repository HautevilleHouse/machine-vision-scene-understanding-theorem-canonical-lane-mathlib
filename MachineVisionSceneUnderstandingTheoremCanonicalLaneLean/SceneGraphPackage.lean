import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure SceneGraphPackage where
  objects : List String
  relations : List String
  hierarchicalStructure : Prop
  objectDetectionReliability : Prop
  relationConsistency : Prop

structure SceneGraphEvidence (S : SceneGraphPackage) where
  hierarchicalStructureClosed : S.hierarchicalStructure
  objectDetectionReliabilityClosed : S.objectDetectionReliability
  relationConsistencyClosed : S.relationConsistency

def SceneGraphClosed (S : SceneGraphPackage) : Prop :=
  S.hierarchicalStructure ∧ S.objectDetectionReliability ∧ S.relationConsistency

theorem scene_graph_closed_from_evidence (S : SceneGraphPackage) (E : SceneGraphEvidence S) : 
    SceneGraphClosed S := by
  exact And.intro E.hierarchicalStructureClosed (And.intro E.objectDetectionReliabilityClosed E.relationConsistencyClosed)

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse