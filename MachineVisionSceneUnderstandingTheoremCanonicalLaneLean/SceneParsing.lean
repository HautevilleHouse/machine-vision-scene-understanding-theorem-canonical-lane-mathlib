import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure SceneParsingPackage where
  segmentation : Prop
  detection : Prop
  spatialLayout : Prop
  affordance : Prop

structure SceneParsingEvidence (S : SceneParsingPackage) where
  segmentationClosed : S.segmentation
  detectionClosed : S.detection
  spatialLayoutClosed : S.spatialLayout
  affordanceClosed : S.affordance

def SceneParsingClosed (S : SceneParsingPackage) : Prop :=
  S.segmentation ∧ S.detection ∧ S.spatialLayout ∧ S.affordance

theorem sceneParsing_closed_from_evidence (S : SceneParsingPackage) (E : SceneParsingEvidence S) : SceneParsingClosed S := by
  exact And.intro E.segmentationClosed (And.intro E.detectionClosed (And.intro E.spatialLayoutClosed E.affordanceClosed))

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse
