import canonicalliageMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MachineVisionSceneObject where
  image : Type
  sceneGraph : Type
  semanticLabels : Type
  depthMap : Type
  reconstruction : Type

structure MachineVisionAdmittedObject where
  object : MachineVisionSceneObject
  conclusion : Prop
  conclusionProof : conclusion

structure MachineVisionAdmissibleClass where
  object : MachineVisionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MachineVisionAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse