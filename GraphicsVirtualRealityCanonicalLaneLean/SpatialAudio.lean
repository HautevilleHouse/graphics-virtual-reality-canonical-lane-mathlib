import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure SpatialAudioSystem where
  hrtfDataSet : String
  distanceAttenuation : Bool
  reverbEnabled : Bool
  sources3D : Nat
  listenerTracking : Bool

def SpatialAudioEvidence (A : SpatialAudioSystem) where
  hrtfLoaded : A.hrtfDataSet ≠ ""
  distanceAttenuationEnabled : A.distanceAttenuation = true
  sourcesPositive : A.sources3D > 0

def SpatialAudioClosed (A : SpatialAudioSystem) : Prop :=
  A.hrtfDataSet ≠ "" ∧ A.distanceAttenuation = true ∧ A.sources3D > 0

theorem spatial_audio_closed_from_evidence (A : SpatialAudioSystem) (E : SpatialAudioEvidence A) :
    SpatialAudioClosed A := by
  exact And.intro E.hrtfLoaded (And.intro E.distanceAttenuationEnabled E.sourcesPositive)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse