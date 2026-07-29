import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure VirtualRealityDisplay (A : AdmissibleClass) where
  stereoscopicRendering : Prop
  headTracking : Prop
  latencyCompensation : Prop
  fieldOfView : Prop

structure VirtualRealityDisplayEvidence (A : AdmissibleClass) (D : VirtualRealityDisplay A) where
  stereoscopicRenderingClosed : D.stereoscopicRendering
  headTrackingClosed : D.headTracking
  latencyCompensationClosed : D.latencyCompensation
  fieldOfViewClosed : D.fieldOfView

def VirtualRealityDisplayClosed (A : AdmissibleClass) (D : VirtualRealityDisplay A) : Prop :=
  D.stereoscopicRendering ∧ D.headTracking ∧ D.latencyCompensation ∧ D.fieldOfView

theorem virtual_reality_display_closed_from_evidence (A : AdmissibleClass) (D : VirtualRealityDisplay A) (E : VirtualRealityDisplayEvidence A D) : VirtualRealityDisplayClosed A D := by
  exact And.intro E.stereoscopicRenderingClosed (And.intro E.headTrackingClosed (And.intro E.latencyCompensationClosed E.fieldOfViewClosed))

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse