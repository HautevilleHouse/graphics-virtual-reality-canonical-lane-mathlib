import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVirtualRealityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VRAdmittedObject where
  package : VRGraphicsPackage
  tracking : PoseTrackingPackage
  headset : Type u
  displayResolution : Prop
  fieldOfView : Prop
  ergonomicComfort : Prop
  displayResolutionTerm : displayResolution
  fieldOfViewTerm : fieldOfView
  ergonomicComfortTerm : ergonomicComfort
  conclusion : VRGraphicsClosed package ∧ PoseTrackingClosed tracking ∧ displayResolution ∧ fieldOfView ∧ ergonomicComfort

def VRWitnessClosed (O : VRAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : VRAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VRWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedVRClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vr_endgame (A : AdmissibleClass) :
    ConstrainedVRClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsVirtualRealityCanonicalLaneLean
end HautevilleHouse