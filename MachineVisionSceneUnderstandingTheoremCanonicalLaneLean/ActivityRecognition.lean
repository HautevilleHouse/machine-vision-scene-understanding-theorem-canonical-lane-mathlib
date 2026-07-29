import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure ActivityRecognitionPackage where
  motionFeatureExtraction : Prop
  temporalModeling : Prop
  interactionGraph : Prop
  activityClassification : Prop

structure ActivityRecognitionEvidence (A : ActivityRecognitionPackage) where
  motionFeatureExtractionClosed : A.motionFeatureExtraction
  temporalModelingClosed : A.temporalModeling
  interactionGraphClosed : A.interactionGraph
  activityClassificationClosed : A.activityClassification

def ActivityRecognitionClosed (A : ActivityRecognitionPackage) : Prop :=
  A.motionFeatureExtraction ∧ A.temporalModeling ∧ A.interactionGraph ∧ A.activityClassification

theorem activity_recognition_closed_from_evidence (A : ActivityRecognitionPackage) (E : ActivityRecognitionEvidence A) :
    ActivityRecognitionClosed A := by
  exact And.intro E.motionFeatureExtractionClosed (And.intro E.temporalModelingClosed (And.intro E.interactionGraphClosed E.activityClassificationClosed))

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse