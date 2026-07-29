import canonicalLaneMathlib.AdmissibleClass
import MachineVisionSceneUnderstandingLemmaCanonicalLaneLean.SceneGraphInference
import MachineVisionSceneUnderstandingLemmaCanonicalLaneLean.StereoscopicDepthEstimation
import MachineVisionSceneUnderstandingLemmaCanonicalLaneLean.ObjectDetectionAndRecognition
import MachineVisionSceneUnderstandingLemmaCanonicalLaneLean.SemanticSegmentation
import MachineVisionSceneUnderstandingLemmaCanonicalLaneLean.ImageCaptioning

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SceneUnderstandingPipeline where
  objectDetection : ObjectDetectionPackage
  semanticSegmentation : SemanticSegmentationPackage
  stereoscopicDepth : StereoscopicDepthEstimationPackage
  sceneGraph : SceneGraphInferencePackage
  imageCaptioning : ImageCaptioningPackage
  pipelineIntegrated : Prop

structure SceneUnderstandingPipelineEvidence (P : SceneUnderstandingPipeline) where
  objectDetectionEvidence : ObjectDetectionEvidence P.objectDetection
  semanticSegmentationEvidence : SemanticSegmentationEvidence P.semanticSegmentation
  stereoscopicDepthEvidence : StereoscopicDepthEstimationEvidence P.stereoscopicDepth
  sceneGraphEvidence : SceneGraphInferenceEvidence P.sceneGraph
  imageCaptioningEvidence : ImageCaptioningEvidence P.imageCaptioning
  pipelineIntegratedClosed : P.pipelineIntegrated

def SceneUnderstandingPipelineClosed (P : SceneUnderstandingPipeline) : Prop :=
  ObjectDetectionClosed P.objectDetection ∧
  SemanticSegmentationClosed P.semanticSegmentation ∧
  StereoscopicDepthEstimationClosed P.stereoscopicDepth ∧
  SceneGraphInferenceClosed P.sceneGraph ∧
  ImageCaptioningClosed P.imageCaptioning ∧
  P.pipelineIntegrated

theorem scene_understanding_pipeline_closed_from_evidence
    (P : SceneUnderstandingPipeline)
    (E : SceneUnderstandingPipelineEvidence P) : SceneUnderstandingPipelineClosed P := by
  have hOD : ObjectDetectionClosed P.objectDetection :=
    object_detection_closed_from_evidence P.objectDetection E.objectDetectionEvidence
  have hSS : SemanticSegmentationClosed P.semanticSegmentation :=
    semantic_segmentation_closed_from_evidence P.semanticSegmentation E.semanticSegmentationEvidence
  have hSD : StereoscopicDepthEstimationClosed P.stereoscopicDepth :=
    stereoscopic_depth_estimation_closed_from_evidence P.stereoscopicDepth E.stereoscopicDepthEvidence
  have hSG : SceneGraphInferenceClosed P.sceneGraph :=
    scene_graph_inference_closed_from_evidence P.sceneGraph E.sceneGraphEvidence
  have hIC : ImageCaptioningClosed P.imageCaptioning :=
    image_captioning_closed_from_evidence P.imageCaptioning E.imageCaptioningEvidence
  exact And.intro hOD (And.intro hSS (And.intro hSD (And.intro hSG (And.intro hIC E.pipelineIntegratedClosed))))

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse