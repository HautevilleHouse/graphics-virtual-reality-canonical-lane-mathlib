import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure PoseTrackingPackage where
  headPose : Type u
  controllerPose : Type v
  updateRate : Prop
  positionalAccuracy : Prop
  rotationalAccuracy : Prop
  driftCancellation : Prop
  updateRateTerm : updateRate
  positionalAccuracyTerm : positionalAccuracy
  rotationalAccuracyTerm : rotationalAccuracy
  driftCancellationTerm : driftCancellation

structure PoseTrackingEvidence (P : PoseTrackingPackage) where
  updateRateClosed : P.updateRate
  positionalAccuracyClosed : P.positionalAccuracy
  rotationalAccuracyClosed : P.rotationalAccuracy
  driftCancellationClosed : P.driftCancellation

def PoseTrackingClosed (P : PoseTrackingPackage) : Prop :=
  P.updateRate ∧ P.positionalAccuracy ∧ P.rotationalAccuracy ∧ P.driftCancellation

theorem pose_tracking_closed_from_evidence (P : PoseTrackingPackage)
    (E : PoseTrackingEvidence P) : PoseTrackingClosed P := by
  exact And.intro E.updateRateClosed
    (And.intro E.positionalAccuracyClosed
      (And.intro E.rotationalAccuracyClosed E.driftCancellationClosed))

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse