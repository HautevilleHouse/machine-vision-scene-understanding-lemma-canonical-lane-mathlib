import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SceneGraphPackage where
  graphNodes : Type u
  edgeRelations : Type v
  spatialHierarchy : Prop
  occlusionModel : Prop
  partWholeConstraints : Prop

structure SceneGraphEvidence (S : SceneGraphPackage) where
  spatialHierarchyClosed : S.spatialHierarchy
  occlusionModelClosed : S.occlusionModel
  partWholeConstraintsClosed : S.partWholeConstraints

def SceneGraphClosed (S : SceneGraphPackage) : Prop :=
  S.spatialHierarchy ∧ S.occlusionModel ∧ S.partWholeConstraints

theorem scene_graph_closed_from_evidence (S : SceneGraphPackage) (E : SceneGraphEvidence S) :
    SceneGraphClosed S := by
  exact And.intro E.spatialHierarchyClosed (And.intro E.occlusionModelClosed E.partWholeConstraintsClosed)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
