import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure ObjectDetectionPackage where
  boundingBoxes : List (Nat × Nat × Nat × Nat)
  classLabels : List String
  confidenceScores : List Float
  detectionAccuracy : Prop
  falsePositiveControl : Prop

structure ObjectDetectionEvidence (O : ObjectDetectionPackage) where
  detectionAccuracyClosed : O.detectionAccuracy
  falsePositiveControlClosed : O.falsePositiveControl

def ObjectDetectionClosed (O : ObjectDetectionPackage) : Prop :=
  O.detectionAccuracy ∧ O.falsePositiveControl

theorem object_detection_closed_from_evidence (O : ObjectDetectionPackage) (E : ObjectDetectionEvidence O) :
    ObjectDetectionClosed O := by
  exact And.intro E.detectionAccuracyClosed E.falsePositiveControlClosed

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse