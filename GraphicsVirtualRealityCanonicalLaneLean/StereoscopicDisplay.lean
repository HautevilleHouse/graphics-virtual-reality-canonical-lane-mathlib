import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure StereoscopicDisplay where
  interpupillaryDistance : Float
  fieldOfView : Float
  aspectRatio : Float
  nearClip : Float
  farClip : Float
  convergenceDistance : Float
  leftEyeCamera : String
  rightEyeCamera : String

structure StereoscopicDisplayEvidence (D : StereoscopicDisplay) where
  positiveIPD : D.interpupillaryDistance > 0.0
  positiveFOV : D.fieldOfView > 0.0 ∧ D.fieldOfView < 180.0
  nearLessThanFar : D.nearClip < D.farClip
  camerasDefined : D.leftEyeCamera ≠ "" ∧ D.rightEyeCamera ≠ ""

def StereoscopicDisplayClosed (D : StereoscopicDisplay) : Prop :=
  D.interpupillaryDistance > 0.0 ∧ D.fieldOfView > 0.0 ∧ D.fieldOfView < 180.0 ∧
  D.nearClip < D.farClip ∧ D.leftEyeCamera ≠ "" ∧ D.rightEyeCamera ≠ ""

theorem stereoscopic_display_closed_from_evidence (D : StereoscopicDisplay) (E : StereoscopicDisplayEvidence D) :
    StereoscopicDisplayClosed D := by
  exact And.intro E.positiveIPD (And.intro (And.intro (And.left E.positiveFOV) (And.right E.positiveFOV)) (And.intro E.nearLessThanFar E.camerasDefined))

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse