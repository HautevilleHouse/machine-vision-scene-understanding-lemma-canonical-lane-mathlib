import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

/-!
# Object Relation Model Package
-/

structure ObjectRelationModelPackage where
  objects : Type u
  predicates : Type v
  subjectObjectGraph : Type w
  relationEmbeddings : Type x
  relationModelClosed : Prop

structure ObjectRelationModelEvidence (R : ObjectRelationModelPackage) where
  predicateClassificationClosed : R.predicates = R.predicates
  graphStructureClosed : R.subjectObjectGraph = R.subjectObjectGraph
  embeddingSpaceClosed : R.relationEmbeddings = R.relationEmbeddings
  relationModelClosedTerm : R.relationModelClosed

def ObjectRelationModelClosed (R : ObjectRelationModelPackage) : Prop :=
  R.relationModelClosed

theorem object_relation_model_closed_from_evidence (R : ObjectRelationModelPackage) (E : ObjectRelationModelEvidence R) : ObjectRelationModelClosed R := by
  exact E.relationModelClosedTerm

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse