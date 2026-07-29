import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MachineVisionSceneUnderstandingLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MachineVisionSceneUnderstandingLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

def ConstrainedSceneUnderstandingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_scene_understanding_endgame (A : AdmissibleClass) :
    ConstrainedSceneUnderstandingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
