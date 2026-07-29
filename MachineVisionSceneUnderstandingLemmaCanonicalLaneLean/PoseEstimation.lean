import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure PoseEstimationPackage where
  keypoints : Type u
  skeletonConnections : Type v
  keypointAccuracy : Prop
  skeletonConsistency : Prop
  temporalPoseSmoothness : Prop

structure PoseEstimationEvidence (P : PoseEstimationPackage) where
  keypointAccuracyClosed : P.keypointAccuracy
  skeletonConsistencyClosed : P.skeletonConsistency
  temporalPoseSmoothnessClosed : P.temporalPoseSmoothness

def PoseEstimationClosed (P : PoseEstimationPackage) : Prop :=
  P.keypointAccuracy ∧ P.skeletonConsistency ∧ P.temporalPoseSmoothness

theorem pose_estimation_closed_from_evidence (P : PoseEstimationPackage) (E : PoseEstimationEvidence P) :
    PoseEstimationClosed P := by
  exact And.intro E.keypointAccuracyClosed (And.intro E.skeletonConsistencyClosed E.temporalPoseSmoothnessClosed)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
