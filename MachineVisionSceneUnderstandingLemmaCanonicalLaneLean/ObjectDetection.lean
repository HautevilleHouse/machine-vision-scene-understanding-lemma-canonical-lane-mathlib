import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure ObjectDetectionPackage where
  boundingBoxes : Type u
  classLabels : Type v
  localizationPrecision : Prop
  classificationAccuracy : Prop
  nonMaxSuppression : Prop

structure ObjectDetectionEvidence (O : ObjectDetectionPackage) where
  localizationPrecisionClosed : O.localizationPrecision
  classificationAccuracyClosed : O.classificationAccuracy
  nonMaxSuppressionClosed : O.nonMaxSuppression

def ObjectDetectionClosed (O : ObjectDetectionPackage) : Prop :=
  O.localizationPrecision ∧ O.classificationAccuracy ∧ O.nonMaxSuppression

theorem object_detection_closed_from_evidence (O : ObjectDetectionPackage) (E : ObjectDetectionEvidence O) :
    ObjectDetectionClosed O := by
  exact And.intro E.localizationPrecisionClosed (And.intro E.classificationAccuracyClosed E.nonMaxSuppressionClosed)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
