import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure IlluminationModelPackage where
  lightSource : Type u
  surfaceShading : Type v
  ambientOcclusion : Type w
  diffuseReflection : Prop
  specularReflection : Prop
  environmentMapping : Prop

structure IlluminationModelEvidence (I : IlluminationModelPackage) where
  diffuseReflectionClosed : I.diffuseReflection
  specularReflectionClosed : I.specularReflection
  environmentMappingClosed : I.environmentMapping

def IlluminationModelClosed (I : IlluminationModelPackage) : Prop :=
  I.diffuseReflection ∧ I.specularReflection ∧ I.environmentMapping

theorem illumination_model_closed_from_evidence (I : IlluminationModelPackage) (E : IlluminationModelEvidence I) : IlluminationModelClosed I :=
  And.intro E.diffuseReflectionClosed (And.intro E.specularReflectionClosed E.environmentMappingClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse