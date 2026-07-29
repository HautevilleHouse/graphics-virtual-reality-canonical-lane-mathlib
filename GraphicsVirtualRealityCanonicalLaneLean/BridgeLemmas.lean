import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VRSceneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse