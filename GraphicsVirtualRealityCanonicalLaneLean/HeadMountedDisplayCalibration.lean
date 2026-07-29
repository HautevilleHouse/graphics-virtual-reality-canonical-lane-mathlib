import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure HeadMountedDisplayCalibrationPackage where
  opticalDistortion : Type
  interpupillaryDistance : ℝ
  lensSeparation : ℝ
  fieldOfView : ℝ
  chromaticAberrationCorrection : Prop

structure HeadMountedDisplayCalibrationEvidence (H : HeadMountedDisplayCalibrationPackage) where
  opticalDistortionClosed : Nonempty H.opticalDistortion
  interpupillaryDistanceClosed : H.interpupillaryDistance > 0
  lensSeparationClosed : H.lensSeparation > 0
  fieldOfViewClosed : H.fieldOfView > 0 ∧ H.fieldOfView < π
  chromaticAberrationCorrectionClosed : H.chromaticAberrationCorrection

def HeadMountedDisplayCalibrationClosed (H : HeadMountedDisplayCalibrationPackage) : Prop :=
  Nonempty H.opticalDistortion ∧ H.interpupillaryDistance > 0 ∧
  H.lensSeparation > 0 ∧ (H.fieldOfView > 0 ∧ H.fieldOfView < π) ∧
  H.chromaticAberrationCorrection

theorem head_mounted_display_calibration_closed_from_evidence (H : HeadMountedDisplayCalibrationPackage) (E : HeadMountedDisplayCalibrationEvidence H) :
    HeadMountedDisplayCalibrationClosed H := by
  exact And.intro E.opticalDistortionClosed
    (And.intro E.interpupillaryDistanceClosed
      (And.intro E.lensSeparationClosed
        (And.intro E.fieldOfViewClosed E.chromaticAberrationCorrectionClosed)))

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse