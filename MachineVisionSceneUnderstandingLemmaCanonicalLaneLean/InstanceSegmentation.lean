import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure InstanceSegmentationPackage where
  instanceMasks : Type u
  instanceLabels : Type v
  maskAccuracy : Prop
  overlapHandling : Prop
  instanceCountConsistency : Prop

structure InstanceSegmentationEvidence (I : InstanceSegmentationPackage) where
  maskAccuracyClosed : I.maskAccuracy
  overlapHandlingClosed : I.overlapHandling
  instanceCountConsistencyClosed : I.instanceCountConsistency

def InstanceSegmentationClosed (I : InstanceSegmentationPackage) : Prop :=
  I.maskAccuracy ∧ I.overlapHandling ∧ I.instanceCountConsistency

theorem instance_segmentation_closed_from_evidence (I : InstanceSegmentationPackage) (E : InstanceSegmentationEvidence I) :
    InstanceSegmentationClosed I := by
  exact And.intro E.maskAccuracyClosed (And.intro E.overlapHandlingClosed E.instanceCountConsistencyClosed)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
