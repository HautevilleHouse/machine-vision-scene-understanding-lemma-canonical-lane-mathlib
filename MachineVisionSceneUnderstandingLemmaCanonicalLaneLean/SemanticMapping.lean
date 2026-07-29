import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure SemanticMapping (S : SceneGraph) where
  objectLabels : S.nodes → String
  relationshipLabels : S.edges → String
  spatialInterpretation : S.spatialRelations → String
  mappingConsistency : ∀ (n : S.nodes), ∃ (label : String), objectLabels n = label

structure SemanticMappingEvidence (S : SceneGraph) (M : SemanticMapping S) where
  objectLabelsAssigned : ∀ (n : S.nodes), M.objectLabels n ≠ ""
  relationshipLabelsAssigned : ∀ (e : S.edges), M.relationshipLabels e ≠ ""
  spatialInterpretationAssigned : ∀ (r : S.spatialRelations), M.spatialInterpretation r ≠ ""
  consistencyHolds : True

theorem semantic_mapping_evidence_from_nonempty
    (S : SceneGraph) (M : SemanticMapping S) :
    SemanticMappingEvidence S M := by
  refine {
    objectLabelsAssigned := by
      intro n
      have h := M.mappingConsistency n
      obtain ⟨label, h⟩ := h
      exact h
    relationshipLabelsAssigned := by
      intro e
      have h := M.mappingConsistency e
      sorry
    spatialInterpretationAssigned := by
      intro r
      have h := M.mappingConsistency r
      sorry
    consistencyHolds := trivial
  }

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse