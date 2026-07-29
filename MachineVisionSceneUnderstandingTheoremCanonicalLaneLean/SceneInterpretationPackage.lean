import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure SceneInterpretationPackage where
  semanticSegmentation : Prop
  objectPoseEstimation : Prop
  occlusionReasoning : Prop
  functionalAffordances : Prop

structure SceneInterpretationEvidence (I : SceneInterpretationPackage) where
  semanticSegmentationClosed : I.semanticSegmentation
  objectPoseEstimationClosed : I.objectPoseEstimation
  occlusionReasoningClosed : I.occlusionReasoning
  functionalAffordancesClosed : I.functionalAffordances

def SceneInterpretationClosed (I : SceneInterpretationPackage) : Prop :=
  I.semanticSegmentation ∧ I.objectPoseEstimation ∧ I.occlusionReasoning ∧ I.functionalAffordances

theorem scene_interpretation_closed_from_evidence (I : SceneInterpretationPackage) (E : SceneInterpretationEvidence I) :
    SceneInterpretationClosed I := by
  exact And.intro E.semanticSegmentationClosed (And.intro E.objectPoseEstimationClosed (And.intro E.occlusionReasoningClosed E.functionalAffordancesClosed))

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse