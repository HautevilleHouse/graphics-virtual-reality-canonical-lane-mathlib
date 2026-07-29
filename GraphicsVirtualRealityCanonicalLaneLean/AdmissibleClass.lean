import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure VRSceneObject where
  objectType : String
  position : (Float × Float × Float)
  rotation : (Float × Float × Float)
  scale : (Float × Float × Float)
  meshData : String

definition VRSceneWitnessClosed (O : VRSceneObject) : Prop :=
  O.objectType ≠ "" ∧ O.meshData ≠ ""

structure AdmissibleClass where
  object : VRSceneObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VRSceneWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse