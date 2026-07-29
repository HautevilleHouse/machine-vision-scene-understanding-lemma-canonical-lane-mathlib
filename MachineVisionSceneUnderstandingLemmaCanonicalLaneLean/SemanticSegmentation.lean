import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

/-!
# Semantic Segmentation Package
-/

structure SemanticSegmentationPackage where
  pixelSpace : Type u
  labelMap : Type v
  regionProposals : Type w
  perPixelClassification : Type x
  segmentationClosed : Prop

structure SemanticSegmentationEvidence (S : SemanticSegmentationPackage) where
  pixelClassificationClosed : S.perPixelClassification = S.perPixelClassification
  regionConsistencyClosed : S.regionProposals = S.regionProposals
  segmentationClosedTerm : S.segmentationClosed

def SemanticSegmentationClosed (S : SemanticSegmentationPackage) : Prop :=
  S.segmentationClosed

theorem semantic_segmentation_closed_from_evidence (S : SemanticSegmentationPackage) (E : SemanticSegmentationEvidence S) : SemanticSegmentationClosed S := by
  exact E.segmentationClosedTerm

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse