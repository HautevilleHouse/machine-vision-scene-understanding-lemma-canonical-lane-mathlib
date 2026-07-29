import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MachineVisionSceneUnderstandingLemmaCanonicalLaneLean

structure Caption where
  text : String
  confidence : Float

structure EncoderDecoderModel where
  encoder : Prop
  decoder : Prop
  attention : Prop

structure ImageCaptioningPackage where
  model : EncoderDecoderModel
  image : String
  generatedCaption : Caption
  relevanceScore : Float

structure ImageCaptioningEvidence (I : ImageCaptioningPackage) where
  encoderClosed : I.model.encoder
  decoderClosed : I.model.decoder
  attentionClosed : I.model.attention

def ImageCaptioningClosed (I : ImageCaptioningPackage) : Prop :=
  I.model.encoder ∧ I.model.decoder ∧ I.model.attention

theorem image_captioning_closed_from_evidence (I : ImageCaptioningPackage)
    (E : ImageCaptioningEvidence I) : ImageCaptioningClosed I := by
  exact And.intro E.encoderClosed
    (And.intro E.decoderClosed E.attentionClosed)

end MachineVisionSceneUnderstandingLemmaCanonicalLaneLean
end HautevilleHouse