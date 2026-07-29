import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure VRPresenceMetrics where
  presenceScore : ℝ
  fieldOfViewCoverage : ℝ
  stereoscopicDisparity : ℝ
  presenceThreshold : ℝ
  presenceSatisfied : Prop
  presenceEvidence : presenceSatisfied

def VRPresenceMetricsClosed (M : VRPresenceMetrics) : Prop :=
  M.presenceSatisfied

theorem vr_presence_metrics_closed_from_evidence (M : VRPresenceMetrics) : VRPresenceMetricsClosed M :=
  M.presenceEvidence

end GraphicsVirtualRealtyCanonicalLaneLean
end HautevilleHouse