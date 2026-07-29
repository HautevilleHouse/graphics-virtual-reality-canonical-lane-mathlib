import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

structure StereoscopicDisparityPackage where
  leftEyeRender : Type u
  rightEyeRender : Type v
  convergencePlane : Type w
  binocularDisparity : Prop
  stereopsisEffect : Prop
  vergenceAccommodationConflict : Prop

structure StereoscopicDisparityEvidence (S : StereoscopicDisparityPackage) where
  binocularDisparityClosed : S.binocularDisparity
  stereopsisEffectClosed : S.stereopsisEffect
  vergenceAccommodationConflictClosed : S.vergenceAccommodationConflict

def StereoscopicDisparityClosed (S : StereoscopicDisparityPackage) : Prop :=
  S.binocularDisparity ∧ S.stereopsisEffect ∧ S.vergenceAccommodationConflict

theorem stereoscopic_disparity_closed_from_evidence (S : StereoscopicDisparityPackage) (E : StereoscopicDisparityEvidence S) : StereoscopicDisparityClosed S :=
  And.intro E.binocularDisparityClosed (And.intro E.stereopsisEffectClosed E.vergenceAccommodationConflictClosed)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse