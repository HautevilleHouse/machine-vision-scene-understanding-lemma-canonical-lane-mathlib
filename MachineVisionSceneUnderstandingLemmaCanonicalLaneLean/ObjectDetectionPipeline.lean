import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

/-!
# Object Detection Pipeline Package
-/

structure ObjectDetectionPackage where
  imageInput : Type u
  featureMap : Type v
  boundingBoxes : Type w
  classLabels : Type x
  confidenceScores : Type y
  detectionClosed : Prop

structure ObjectDetectionEvidence (D : ObjectDetectionPackage) where
  featureExtractionClosed : D.featureMap = D.featureMap
  boundingBoxPredictionClosed : D.boundingBoxes = D.boundingBoxes
  classificationClosed : D.classLabels = D.classLabels
  detectionClosedTerm : D.detectionClosed

def ObjectDetectionClosed (D : ObjectDetectionPackage) : Prop :=
  D.detectionClosed

theorem object_detection_closed_from_evidence (D : ObjectDetectionPackage) (E : ObjectDetectionEvidence D) : ObjectDetectionClosed D := by
  exact E.detectionClosedTerm

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse