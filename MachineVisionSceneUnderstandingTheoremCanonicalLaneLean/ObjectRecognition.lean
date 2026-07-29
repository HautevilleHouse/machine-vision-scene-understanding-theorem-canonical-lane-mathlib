import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingTheoremCanonicalLaneLean

structure ObjectRecognitionPackage where
  detection : Prop
  classification : Prop
  localization : Prop
  tracking : Prop

structure ObjectRecognitionEvidence (O : ObjectRecognitionPackage) where
  detectionClosed : O.detection
  classificationClosed : O.classification
  localizationClosed : O.localization
  trackingClosed : O.tracking

def ObjectRecognitionClosed (O : ObjectRecognitionPackage) : Prop :=
  O.detection ∧ O.classification ∧ O.localization ∧ O.tracking

theorem objectRecognition_closed_from_evidence (O : ObjectRecognitionPackage) (E : ObjectRecognitionEvidence O) : ObjectRecognitionClosed O := by
  exact And.intro E.detectionClosed (And.intro E.classificationClosed (And.intro E.localizationClosed E.trackingClosed))

end MachineVisionSceneUnderstandingTheoremCanonicalLaneLean
end HautevilleHouse
