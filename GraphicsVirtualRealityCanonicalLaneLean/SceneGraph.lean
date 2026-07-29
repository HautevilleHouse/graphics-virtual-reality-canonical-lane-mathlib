import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure SceneGraph (A : AdmissibleClass) where
  nodeHierarchy : Prop
  transformPropagation : Prop
  boundingVolumeHierarchy : Prop
  cullingOptimization : Prop

structure SceneGraphEvidence (A : AdmissibleClass) (S : SceneGraph A) where
  nodeHierarchyClosed : S.nodeHierarchy
  transformPropagationClosed : S.transformPropagation
  boundingVolumeHierarchyClosed : S.boundingVolumeHierarchy
  cullingOptimizationClosed : S.cullingOptimization

def SceneGraphClosed (A : AdmissibleClass) (S : SceneGraph A) : Prop :=
  S.nodeHierarchy ∧ S.transformPropagation ∧ S.boundingVolumeHierarchy ∧ S.cullingOptimization

theorem scene_graph_closed_from_evidence (A : AdmissibleClass) (S : SceneGraph A) (E : SceneGraphEvidence A S) : SceneGraphClosed A S := by
  exact And.intro E.nodeHierarchyClosed (And.intro E.transformPropagationClosed (And.intro E.boundingVolumeHierarchyClosed E.cullingOptimizationClosed))

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse