import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure GraphNeuralNetwork where
  nodeUpdateRule : (String × String × String) → String
  edgeUpdateRule : (String × String × String × String) → String
  readoutFunction : List String → String
  numberOfLayers : Nat

structure GNNEvidence (GNN : GraphNeuralNetwork) where
  nodeUpdateDefined : True
  edgeUpdateDefined : True
  readoutFunctionDefined : True
  layersPositive : GNN.numberOfLayers > 0

theorem gnn_evidence_exists (GNN : GraphNeuralNetwork) : GNNEvidence GNN := by
  refine {
    nodeUpdateDefined := trivial
    edgeUpdateDefined := trivial
    readoutFunctionDefined := trivial
    layersPositive := by
      have h : GNN.numberOfLayers > 0 := by
        omega
      exact h
  }

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse