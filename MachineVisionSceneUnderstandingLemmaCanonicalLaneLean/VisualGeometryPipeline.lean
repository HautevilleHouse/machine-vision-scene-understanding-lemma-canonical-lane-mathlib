import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure VisualGeometryPipelinePackage where
  cameraCalibration : Prop
  featureDetection : Prop
  featureMatching : Prop
  poseEstimation : Prop
  triangulation : Prop
  bundleAdjustment : Prop
  denseReconstruction : Prop

structure VisualGeometryPipelineEvidence (P : VisualGeometryPipelinePackage) where
  cameraCalibrationClosed : P.cameraCalibration
  featureDetectionClosed : P.featureDetection
  featureMatchingClosed : P.featureMatching
  poseEstimationClosed : P.poseEstimation
  triangulationClosed : P.triangulation
  bundleAdjustmentClosed : P.bundleAdjustment
  denseReconstructionClosed : P.denseReconstruction

def VisualGeometryPipelineClosed (P : VisualGeometryPipelinePackage) : Prop :=
  P.cameraCalibration ∧ P.featureDetection ∧ P.featureMatching ∧
  P.poseEstimation ∧ P.triangulation ∧ P.bundleAdjustment ∧ P.denseReconstruction

theorem visual_geometry_pipeline_closed_from_evidence (P : VisualGeometryPipelinePackage)
    (E : VisualGeometryPipelineEvidence P) : VisualGeometryPipelineClosed P := by
  exact And.intro E.cameraCalibrationClosed
    (And.intro E.featureDetectionClosed
      (And.intro E.featureMatchingClosed
        (And.intro E.poseEstimationClosed
          (And.intro E.triangulationClosed
            (And.intro E.bundleAdjustmentClosed E.denseReconstructionClosed)))))

end HautevilleHouse
end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
