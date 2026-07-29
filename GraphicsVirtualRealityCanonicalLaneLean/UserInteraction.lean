import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure UserInteractionPackage where
  handGesture : Type u
  eyeTracking : Type v
  hapticFeedback : Type w
  gestureRecognition : Prop
  gazeDetection : Prop
  hapticRendering : Prop

structure UserInteractionEvidence (U : UserInteractionPackage) where
  gestureRecognitionClosed : U.gestureRecognition
  gazeDetectionClosed : U.gazeDetection
  hapticRenderingClosed : U.hapticRendering

def UserInteractionClosed (U : UserInteractionPackage) : Prop :=
  U.gestureRecognition ∧ U.gazeDetection ∧ U.hapticRendering

theorem user_interaction_closed_from_evidence (U : UserInteractionPackage) (E : UserInteractionEvidence U) : UserInteractionClosed U :=
  And.intro E.gestureRecognitionClosed (And.intro E.gazeDetectionClosed E.hapticRenderingClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse