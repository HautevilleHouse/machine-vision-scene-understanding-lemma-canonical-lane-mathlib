import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SemanticSegmentationPackage where
  encoderBackbone : Prop
  decoderUpsampling : Prop
  pixelWiseClassification : Prop
  lossFunction : Prop
  evaluationMetric : Prop
  datasetAnnotations : Prop

structure SemanticSegmentationEvidence (S : SemanticSegmentationPackage) where
  encoderBackboneClosed : S.encoderBackbone
  decoderUpsamplingClosed : S.decoderUpsampling
  pixelWiseClassificationClosed : S.pixelWiseClassification
  lossFunctionClosed : S.lossFunction
  evaluationMetricClosed : S.evaluationMetric
  datasetAnnotationsClosed : S.datasetAnnotations

def SemanticSegmentationClosed (S : SemanticSegmentationPackage) : Prop :=
  S.encoderBackbone ∧ S.decoderUpsampling ∧ S.pixelWiseClassification ∧
  S.lossFunction ∧ S.evaluationMetric ∧ S.datasetAnnotations

theorem semantic_segmentation_closed_from_evidence (S : SemanticSegmentationPackage)
    (E : SemanticSegmentationEvidence S) : SemanticSegmentationClosed S := by
  exact And.intro E.encoderBackboneClosed
    (And.intro E.decoderUpsamplingClosed
      (And.intro E.pixelWiseClassificationClosed
        (And.intro E.lossFunctionClosed
          (And.intro E.evaluationMetricClosed E.datasetAnnotationsClosed))))

end HautevilleHouse
end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
