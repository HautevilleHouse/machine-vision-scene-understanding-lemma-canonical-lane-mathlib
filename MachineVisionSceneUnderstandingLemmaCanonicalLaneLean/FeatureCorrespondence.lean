import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure FeatureCorrespondencePackage where
  featureDescriptors : Type u
  matchingFunction : Type v
  geometricConsistency : Prop
  appearanceConsistency : Prop
  outlierFiltering : Prop

structure FeatureCorrespondenceEvidence (F : FeatureCorrespondencePackage) where
  geometricConsistencyClosed : F.geometricConsistency
  appearanceConsistencyClosed : F.appearanceConsistency
  outlierFilteringClosed : F.outlierFiltering

def FeatureCorrespondenceClosed (F : FeatureCorrespondencePackage) : Prop :=
  F.geometricConsistency ∧ F.appearanceConsistency ∧ F.outlierFiltering

theorem feature_correspondence_closed_from_evidence (F : FeatureCorrespondencePackage) (E : FeatureCorrespondenceEvidence F) :
    FeatureCorrespondenceClosed F := by
  exact And.intro E.geometricConsistencyClosed (And.intro E.appearanceConsistencyClosed E.outlierFilteringClosed)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
