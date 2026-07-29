import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure InteractionModel (A : AdmissibleClass) where
  inputDeviceTracking : Prop
  gestureRecognition : Prop
  hapticFeedback : Prop
  userInterface : Prop

structure InteractionModelEvidence (A : AdmissibleClass) (I : InteractionModel A) where
  inputDeviceTrackingClosed : I.inputDeviceTracking
  gestureRecognitionClosed : I.gestureRecognition
  hapticFeedbackClosed : I.hapticFeedback
  userInterfaceClosed : I.userInterface

def InteractionModelClosed (A : AdmissibleClass) (I : InteractionModel A) : Prop :=
  I.inputDeviceTracking ∧ I.gestureRecognition ∧ I.hapticFeedback ∧ I.userInterface

theorem interaction_model_closed_from_evidence (A : AdmissibleClass) (I : InteractionModel A) (E : InteractionModelEvidence A I) : InteractionModelClosed A I := by
  exact And.intro E.inputDeviceTrackingClosed (And.intro E.gestureRecognitionClosed (And.intro E.hapticFeedbackClosed E.userInterfaceClosed))

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse