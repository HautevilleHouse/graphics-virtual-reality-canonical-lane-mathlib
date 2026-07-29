import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure VRSceneEncoding where
  sceneGraph : Type u
  spatialPartition : Type v
  geometricPrimitives : Type w
  sceneComplexity : Nat
  encodingClosed : Prop

def VRSceneEncodingClosed (E : VRSceneEncoding) : Prop :=
  E.encodingClosed

end GraphicsVirtualRealtyCanonicalLaneLean
end HautevilleHouse