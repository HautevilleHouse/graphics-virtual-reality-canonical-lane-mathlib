import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure SpatialTrackingPackage where
  headsetPose : Type u
  controllerInput : Type v
  roomScale : Type w
  sixDofTracking : Prop
  positionalTracking : Prop
  rotationalTracking : Prop

structure SpatialTrackingEvidence (S : SpatialTrackingPackage) where
  sixDofTrackingClosed : S.sixDofTracking
  positionalTrackingClosed : S.positionalTracking
  rotationalTrackingClosed : S.rotationalTracking

def SpatialTrackingClosed (S : SpatialTrackingPackage) : Prop :=
  S.sixDofTracking ∧ S.positionalTracking ∧ S.rotationalTracking

theorem spatial_tracking_closed_from_evidence (S : SpatialTrackingPackage) (E : SpatialTrackingEvidence S) : SpatialTrackingClosed S :=
  And.intro E.sixDofTrackingClosed (And.intro E.positionalTrackingClosed E.rotationalTrackingClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse