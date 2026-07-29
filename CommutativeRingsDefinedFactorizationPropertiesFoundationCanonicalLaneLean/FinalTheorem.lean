import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

def ConstrainedUFDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ufd_endgame (A : AdmissibleClass) : ConstrainedUFDClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse