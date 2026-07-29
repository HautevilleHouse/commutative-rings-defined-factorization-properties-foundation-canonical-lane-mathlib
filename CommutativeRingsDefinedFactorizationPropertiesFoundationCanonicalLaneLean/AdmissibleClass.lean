import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CommutativeRingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FactorizationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse