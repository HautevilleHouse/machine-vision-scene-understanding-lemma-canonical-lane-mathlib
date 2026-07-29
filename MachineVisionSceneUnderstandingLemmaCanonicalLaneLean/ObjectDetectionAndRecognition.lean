import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure BoundingBox where
  x : Float
  y : Float
  width : Float
  height : Float

structure ObjectDetectionResult where
  label : String
  confidence : Float
  bbox : BoundingBox

structure ObjectDetectionPackage where
  featureExtractor : Prop
  detectionNetwork : Prop
  nonMaxSuppression : Prop
  detections : List ObjectDetectionResult

structure ObjectDetectionEvidence (O : ObjectDetectionPackage) where
  featureExtractorClosed : O.featureExtractor
  detectionNetworkClosed : O.detectionNetwork
  nonMaxSuppressionClosed : O.nonMaxSuppression

def ObjectDetectionClosed (O : ObjectDetectionPackage) : Prop :=
  O.featureExtractor ∧ O.detectionNetwork ∧ O.nonMaxSuppression

theorem object_detection_closed_from_evidence (O : ObjectDetectionPackage)
    (E : ObjectDetectionEvidence O) : ObjectDetectionClosed O := by
  exact And.intro E.featureExtractorClosed
    (And.intro E.detectionNetworkClosed E.nonMaxSuppressionClosed)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse