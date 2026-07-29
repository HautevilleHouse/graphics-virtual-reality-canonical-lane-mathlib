import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure VRRenderingPipeline where
  shadingStage : Type u
  rasterizationStage : Type v
  postProcessingStage : Type w
  stereoscopicOutput : Prop
  pipelinePerformance : Prop
  pipelineEvidence : Prop

def VRRenderingPipelineClosed (P : VRRenderingPipeline) : Prop :=
  P.stereoscopicOutput ∧ P.pipelinePerformance

theorem vr_rendering_pipeline_closed_from_evidence (P : VRRenderingPipeline) (E : P.pipelineEvidence) : VRRenderingPipelineClosed P :=
  And.intro P.stereoscopicOutput P.pipelinePerformance

end GraphicsVirtualRealtyCanonicalLaneLean
end HautevilleHouse