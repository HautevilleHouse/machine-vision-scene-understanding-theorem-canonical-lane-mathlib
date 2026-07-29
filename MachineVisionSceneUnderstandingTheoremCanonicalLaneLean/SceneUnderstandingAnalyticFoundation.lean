import canonicalLaneMathlib.AdmissibleClass
import MachineVisionSceneUnderstandingTheoremCanonicalLaneLean.SceneGraphPackage
import MachineVisionSceneUnderstandingTheoremCanonicalLaneLean.SceneInterpretationPackage
import MachineVisionSceneUnderstandingTheoremCanonicalLaneLean.SpatialReasoningPackage
import MachineVisionSceneUnderstandingTheoremCanonicalLaneLean.TemporalConsistencyPackage

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure SceneUnderstandingAnalyticFoundation where
  sceneGraph : SceneGraphPackage
  sceneGraphEvidence : SceneGraphEvidence sceneGraph
  sceneInterpretation : SceneInterpretationPackage
  sceneInterpretationEvidence : SceneInterpretationEvidence sceneInterpretation
  spatialReasoning : SpatialReasoningPackage
  spatialReasoningEvidence : SpatialReasoningEvidence spatialReasoning
  temporalConsistency : TemporalConsistencyPackage
  temporalConsistencyEvidence : TemporalConsistencyEvidence temporalConsistency

def SceneUnderstandingAnalyticFoundationClosed (A : SceneUnderstandingAnalyticFoundation) : Prop :=
  SceneGraphClosed A.sceneGraph ∧ SceneInterpretationClosed A.sceneInterpretation ∧
  SpatialReasoningClosed A.spatialReasoning ∧ TemporalConsistencyClosed A.temporalConsistency

theorem scene_understanding_analytic_foundation_closed_from_evidence
    (A : SceneUnderstandingAnalyticFoundation) : SceneUnderstandingAnalyticFoundationClosed A := by
  exact And.intro (scene_graph_closed_from_evidence A.sceneGraph A.sceneGraphEvidence)
    (And.intro (scene_interpretation_closed_from_evidence A.sceneInterpretation A.sceneInterpretationEvidence)
      (And.intro (spatial_reasoning_closed_from_evidence A.spatialReasoning A.spatialReasoningEvidence)
        (temporal_consistency_closed_from_evidence A.temporalConsistency A.temporalConsistencyEvidence)))

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse