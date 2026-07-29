import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SceneGraph where
  nodes : List String
  edges : List (String × String)
  spatialRelations : List (String × String × String)
  nodeFeatures : String → String
  edgeFeatures : (String × String) → String

structure SceneGraphEvidence (S : SceneGraph) where
  nodesListed : S.nodes.length > 0
  edgesConsistentWithNodes : ∀ (e : String × String), e ∈ S.edges → e.1 ∈ S.nodes ∧ e.2 ∈ S.nodes
  spatialRelationsConsistent : ∀ (r : String × String × String), r ∈ S.spatialRelations → r.1 ∈ S.nodes ∧ r.2 ∈ S.nodes ∧ r.3.1 ∈ S.nodes

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse