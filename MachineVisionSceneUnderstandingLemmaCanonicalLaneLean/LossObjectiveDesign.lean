import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure LossObjectivePackage where
  supervisedLossTerm : Type u
  unsupervisedRegularization : Type v
  consistencyConstraint : Type w
  metricLearningMargin : Type x
  classificationAccuracy : Prop
  regularizationStability : Prop
  constraintSatisfaction : Prop
  marginSufficiency : Prop

structure LossObjectiveEvidence (L : LossObjectivePackage) where
  classificationAccuracyClosed : L.classificationAccuracy
  regularizationStabilityClosed : L.regularizationStability
  constraintSatisfactionClosed : L.constraintSatisfaction
  marginSufficiencyClosed : L.marginSufficiency

def LossObjectiveClosed (L : LossObjectivePackage) : Prop :=
  L.classificationAccuracy ∧ L.regularizationStability ∧
  L.constraintSatisfaction ∧ L.marginSufficiency

theorem loss_objective_closed_from_evidence
    (L : LossObjectivePackage) (E : LossObjectiveEvidence L) :
    LossObjectiveClosed L := by
  exact And.intro E.classificationAccuracyClosed
    (And.intro E.regularizationStabilityClosed
      (And.intro E.constraintSatisfactionClosed E.marginSufficiencyClosed))

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse
