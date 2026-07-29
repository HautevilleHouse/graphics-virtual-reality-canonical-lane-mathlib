import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure LatencyCompensationPackage where
  timeWarp : Type u
  reprojection : Type v
  prediction : Type w
  motionToPhotonLatency : Prop
  reprojectionCorrected : Prop
  predictionApplied : Prop

structure LatencyCompensationEvidence (L : LatencyCompensationPackage) where
  motionToPhotonLatencyClosed : L.motionToPhotonLatency
  reprojectionCorrectedClosed : L.reprojectionCorrected
  predictionAppliedClosed : L.predictionApplied

def LatencyCompensationClosed (L : LatencyCompensationPackage) : Prop :=
  L.motionToPhotonLatency ∧ L.reprojectionCorrected ∧ L.predictionApplied

theorem latency_compensation_closed_from_evidence (L : LatencyCompensationPackage) (E : LatencyCompensationEvidence L) : LatencyCompensationClosed L :=
  And.intro E.motionToPhotonLatencyClosed (And.intro E.reprojectionCorrectedClosed E.predictionAppliedClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse