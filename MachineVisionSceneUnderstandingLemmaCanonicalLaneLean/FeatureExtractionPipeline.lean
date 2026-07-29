import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure FeatureExtractionPackage where
  imageLayer : Type u
  convolutionBank : Type v
  activationMap : Type w
  featurePyramid : Type x
  scaleSpaceRepresentation : Prop
  receptiveFieldCoverage : Prop
  hierarchicalAbstraction : Prop
  endToEndDifferentiability : Prop

structure FeatureExtractionEvidence (F : FeatureExtractionPackage) where
  scaleSpaceRepresentationClosed : F.scaleSpaceRepresentation
  receptiveFieldCoverageClosed : F.receptiveFieldCoverage
  hierarchicalAbstractionClosed : F.hierarchicalAbstraction
  endToEndDifferentiabilityClosed : F.endToEndDifferentiability

def FeatureExtractionClosed (F : FeatureExtractionPackage) : Prop :=
  F.scaleSpaceRepresentation ∧ F.receptiveFieldCoverage ∧
  F.hierarchicalAbstraction ∧ F.endToEndDifferentiability

theorem feature_extraction_closed_from_evidence
    (F : FeatureExtractionPackage) (E : FeatureExtractionEvidence F) :
    FeatureExtractionClosed F := by
  exact And.intro E.scaleSpaceRepresentationClosed
    (And.intro E.receptiveFieldCoverageClosed
      (And.intro E.hierarchicalAbstractionClosed E.endToEndDifferentiabilityClosed))

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
