import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure RenderingPipelinePackage where
  rasterizationUnit : Type u
  shadingUnit : Type v
  outputMerger : Type w
  vertexProcessing : Prop
  fragmentProcessing : Prop
  postProcessing : Prop

structure RenderingPipelineEvidence (P : RenderingPipelinePackage) where
  vertexProcessingClosed : P.vertexProcessing
  fragmentProcessingClosed : P.fragmentProcessing
  postProcessingClosed : P.postProcessing

def RenderingPipelineClosed (P : RenderingPipelinePackage) : Prop :=
  P.vertexProcessing ∧ P.fragmentProcessing ∧ P.postProcessing

theorem rendering_pipeline_closed_from_evidence (P : RenderingPipelinePackage) (E : RenderingPipelineEvidence P) : RenderingPipelineClosed P :=
  And.intro E.vertexProcessingClosed (And.intro E.fragmentProcessingClosed E.postProcessingClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse