import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SemanticSegmentationPackage where
  pixelLabelMap : Type u
  classProbabilityDistribution : Type v
  boundaryRefinement : Type w
  multiScaleFusion : Type x
  pixelAccuracy : Prop
  boundaryFidelity : Prop
  classBalancedLoss : Prop
  consistentLabeling : Prop

structure SemanticSegmentationEvidence (S : SemanticSegmentationPackage) where
  pixelAccuracyClosed : S.pixelAccuracy
  boundaryFidelityClosed : S.boundaryFidelity
  classBalancedLossClosed : S.classBalancedLoss
  consistentLabelingClosed : S.consistentLabeling

def SemanticSegmentationClosed (S : SemanticSegmentationPackage) : Prop :=
  S.pixelAccuracy ∧ S.boundaryFidelity ∧
  S.classBalancedLoss ∧ S.consistentLabeling

theorem semantic_segmentation_closed_from_evidence
    (S : SemanticSegmentationPackage) (E : SemanticSegmentationEvidence S) :
    SemanticSegmentationClosed S := by
  exact And.intro E.pixelAccuracyClosed
    (And.intro E.boundaryFidelityClosed
      (And.intro E.classBalancedLossClosed E.consistentLabelingClosed))

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
