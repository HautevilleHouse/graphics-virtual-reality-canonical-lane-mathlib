import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure FoveatedRenderingPackage where
  gazePoint : Type u
  resolutionMapping : Type v
  peripheralScaling : Type w
  highResFovea : Prop
  lowResPeriphery : Prop
  dynamicLevelOfDetail : Prop

structure FoveatedRenderingEvidence (F : FoveatedRenderingPackage) where
  highResFoveaClosed : F.highResFovea
  lowResPeripheryClosed : F.lowResPeriphery
  dynamicLevelOfDetailClosed : F.dynamicLevelOfDetail

def FoveatedRenderingClosed (F : FoveatedRenderingPackage) : Prop :=
  F.highResFovea ∧ F.lowResPeriphery ∧ F.dynamicLevelOfDetail

theorem foveated_rendering_closed_from_evidence (F : FoveatedRenderingPackage) (E : FoveatedRenderingEvidence F) : FoveatedRenderingClosed F :=
  And.intro E.highResFoveaClosed (And.intro E.lowResPeripheryClosed E.dynamicLevelOfDetailClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse