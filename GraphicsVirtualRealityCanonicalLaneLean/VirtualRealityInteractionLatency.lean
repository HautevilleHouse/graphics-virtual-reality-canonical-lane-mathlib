import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure VRInteractionLatency where
  inputToPhotonLatency : Nat
  trackingUpdateRate : Nat
  motionToPhotonLatency : Nat
  latencySatisfiesThreshold : Prop
  threshold : Nat
  latencyEvidence : latencySatisfiesThreshold

def VRInteractionLatencyClosed (L : VRInteractionLatency) : Prop :=
  L.latencySatisfiesThreshold

theorem vr_interaction_latency_closed_from_evidence (L : VRInteractionLatency) : VRInteractionLatencyClosed L :=
  L.latencyEvidence

end GraphicsVirtualRealtyCanonicalLaneLean
end HautevilleHouse