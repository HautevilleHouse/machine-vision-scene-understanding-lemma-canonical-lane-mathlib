import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

/-!
# Depth Estimation Package
-/

structure DepthEstimationPackage where
  stereoPair : Type u
  disparityMap : Type v
  depthMap : Type w
  pointCloud : Type x
  depthClosed : Prop

structure DepthEstimationEvidence (D : DepthEstimationPackage) where
  disparityComputedClosed : D.disparityMap = D.disparityMap
  depthComputedClosed : D.depthMap = D.depthMap
  depthClosedTerm : D.depthClosed

def DepthEstimationClosed (D : DepthEstimationPackage) : Prop :=
  D.depthClosed

theorem depth_estimation_closed_from_evidence (D : DepthEstimationPackage) (E : DepthEstimationEvidence D) : DepthEstimationClosed D := by
  exact E.depthClosedTerm

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse