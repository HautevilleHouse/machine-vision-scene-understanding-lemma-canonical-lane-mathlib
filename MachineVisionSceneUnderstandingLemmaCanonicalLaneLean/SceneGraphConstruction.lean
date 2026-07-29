import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

/-!
# Scene Graph Construction Package
-/

structure SceneGraphPackage where
  imagePlane : Type u
  segmentation : Type v
  objectDetections : Type w
  relationalTriplets : Type x
  graphNodes : Type y
  graphEdges : Type z
  sceneGraphSatisfies : Prop

structure SceneGraphEvidence (S : SceneGraphPackage) where
  objectDetectionsClosed : S.objectDetections = S.objectDetections
  relationalTripletsClosed : S.relationalTriplets = S.relationalTriplets
  graphStructureClosed : S.sceneGraphSatisfies

def SceneGraphClosed (S : SceneGraphPackage) : Prop :=
  S.sceneGraphSatisfied

theorem scene_graph_closed_from_evidence (S : SceneGraphPackage) (E : SceneGraphEvidence S) : SceneGraphClosed S := by
  exact E.graphStructureClosed

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse