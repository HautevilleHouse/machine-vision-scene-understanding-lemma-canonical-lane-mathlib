import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SceneGraph where
  entities : List String
  relations : List (String × String × String)
  attributes : List (String × String)

structure SceneGraphInferencePackage where
  sceneGraph : SceneGraph
  reasoningRules : Prop
  inferenceComplete : Prop

structure SceneGraphInferenceEvidence (S : SceneGraphInferencePackage) where
  reasoningRulesClosed : S.reasoningRules
  inferenceCompleteClosed : S.inferenceComplete

def SceneGraphInferenceClosed (S : SceneGraphInferencePackage) : Prop :=
  S.reasoningRules ∧ S.inferenceComplete

theorem scene_graph_inference_closed_from_evidence (S : SceneGraphInferencePackage)
    (E : SceneGraphInferenceEvidence S) : SceneGraphInferenceClosed S := by
  exact And.intro E.reasoningRulesClosed E.inferenceCompleteClosed

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse