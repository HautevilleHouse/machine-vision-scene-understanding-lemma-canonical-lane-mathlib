import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SceneGraphPipeline (S : SceneGraph) (GNN : GraphNeuralNetwork) where
  input2graph : String → S.nodes
  graph2embedding : S.nodes → String
  embedding2sceneGraph : String → S
  endToEndConsistency : ∀ (input : String), embedding2sceneGraph (graph2embedding (input2graph input)) = input2graph input

structure PipelineEvidence (S : SceneGraph) (GNN : GraphNeuralNetwork) (P : SceneGraphPipeline S GNN) where
  input2graphDefined : True
  graph2embeddingDefined : True
  embedding2sceneGraphDefined : True
  endToEndConsistencyHolds : ∀ (input : String), P.embedding2sceneGraph (P.graph2embedding (P.input2graph input)) = P.input2graph input

theorem pipeline_evidence_from_consistency
    (S : SceneGraph) (GNN : GraphNeuralNetwork) (P : SceneGraphPipeline S GNN)
    (h : ∀ (input : String), P.embedding2sceneGraph (P.graph2embedding (P.input2graph input)) = P.input2graph input) :
    PipelineEvidence S GNN P := by
  refine {
    input2graphDefined := trivial
    graph2embeddingDefined := trivial
    embedding2sceneGraphDefined := trivial
    endToEndConsistencyHolds := h
  }

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse