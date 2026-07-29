import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure EndToEndPipelinePackage where
  inputImage : Type u
  sceneUnderstanding : Type v
  depthNormalsModule : SceneDepthNormalsPackage
  segmentationModule : SemanticSegmentationPackage
  detectionModule : ObjectDetectionPackage
  sceneGraphModule : SceneGraphPackage
  geometricModule : GeometricReasoningPackage
  pipelineCoherence : Prop

structure EndToEndPipelineEvidence (P : EndToEndPipelinePackage) where
  depthNormalsClosed : SceneDepthNormalsClosed P.depthNormalsModule
  segmentationClosed : SemanticSegmentationClosed P.segmentationModule
  detectionClosed : ObjectDetectionClosed P.detectionModule
  sceneGraphClosed : SceneGraphClosed P.sceneGraphModule
  geometricClosed : GeometricReasoningClosed P.geometricModule
  pipelineCoherenceClosed : P.pipelineCoherence

def EndToEndPipelineClosed (P : EndToEndPipelinePackage) : Prop :=
  SceneDepthNormalsClosed P.depthNormalsModule ∧
  SemanticSegmentationClosed P.segmentationModule ∧
  ObjectDetectionClosed P.detectionModule ∧
  SceneGraphClosed P.sceneGraphModule ∧
  GeometricReasoningClosed P.geometricModule ∧
  P.pipelineCoherence

theorem end_to_end_pipeline_closed_from_evidence (P : EndToEndPipelinePackage)
    (E : EndToEndPipelineEvidence P) : EndToEndPipelineClosed P := by
  exact And.intro E.depthNormalsClosed
    (And.intro E.segmentationClosed
      (And.intro E.detectionClosed
        (And.intro E.sceneGraphClosed
          (And.intro E.geometricClosed E.pipelineCoherenceClosed))))

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse
