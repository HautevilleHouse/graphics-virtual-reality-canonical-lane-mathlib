import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure VRGraphicsPackage where
  scene : Type u
  projectionMatrix : Type v
  renderingPipeline : Type w
  stereoscopicCorrect : Prop
  framerateSmooth : Prop
  latencyBounded : Prop
  stereoscopicCorrectTerm : stereoscopicCorrect
  framerateSmoothTerm : framerateSmooth
  latencyBoundedTerm : latencyBounded

structure VRGraphicsEvidence (V : VRGraphicsPackage) where
  stereoscopicCorrectClosed : V.stereoscopicCorrect
  framerateSmoothClosed : V.framerateSmooth
  latencyBoundedClosed : V.latencyBounded

def VRGraphicsClosed (V : VRGraphicsPackage) : Prop :=
  V.stereoscopicCorrect ∧ V.framerateSmooth ∧ V.latencyBounded

theorem vr_graphics_closed_from_evidence (V : VRGraphicsPackage)
    (E : VRGraphicsEvidence V) : VRGraphicsClosed V := by
  exact And.intro E.stereoscopicCorrectClosed
    (And.intro E.framerateSmoothClosed E.latencyBoundedClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse