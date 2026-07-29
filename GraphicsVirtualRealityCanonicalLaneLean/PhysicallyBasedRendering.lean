import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure PhysicallyBasedRendering (A : AdmissibleClass) where
  materialModel : Prop
  lightTransport : Prop
  globalIllumination : Prop
  toneMapping : Prop

structure PhysicallyBasedRenderingEvidence (A : AdmissibleClass) (P : PhysicallyBasedRendering A) where
  materialModelClosed : P.materialModel
  lightTransportClosed : P.lightTransport
  globalIlluminationClosed : P.globalIllumination
  toneMappingClosed : P.toneMapping

def PhysicallyBasedRenderingClosed (A : AdmissibleClass) (P : PhysicallyBasedRendering A) : Prop :=
  P.materialModel ∧ P.lightTransport ∧ P.globalIllumination ∧ P.toneMapping

theorem physically_based_rendering_closed_from_evidence (A : AdmissibleClass) (P : PhysicallyBasedRendering A) (E : PhysicallyBasedRenderingEvidence A P) : PhysicallyBasedRenderingClosed A P := by
  exact And.intro E.materialModelClosed (And.intro E.lightTransportClosed (And.intro E.globalIlluminationClosed E.toneMappingClosed))

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse