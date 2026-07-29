import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure SceneGraph where
  nodes : List Node
  edges : List Edge

defining: Node, Edge types not elaborated.

structure SceneGraphPackage where
  graph : SceneGraph
  segmentation : Prop
  objectDetection : Prop
  relationParsing : Prop
  graphConsistency : Prop

structure SceneGraphEvidence (P : SceneGraphPackage) where
  segmentationClosed : P.segmentation
  objectDetectionClosed : P.objectDetection
  relationParsingClosed : P.relationParsing
  graphConsistencyClosed : P.graphConsistency

def SceneGraphClosed (P : SceneGraphPackage) : Prop :=
  P.segmentation ∧ P.objectDetection ∧ P.relationParsing ∧ P.graphConsistency

theorem sceneGraph_closed_from_evidence (P : SceneGraphPackage) (E : SceneGraphEvidence P) : SceneGraphClosed P := by
  exact And.intro E.segmentationClosed (And.intro E.objectDetectionClosed (And.intro E.relationParsingClosed E.graphConsistencyClosed))

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse
