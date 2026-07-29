import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure IntegralDomainFactorizationPackage where
  domainType : Type u
  isDomain : Prop
  irreducibleDefined : Prop
  primeDefined : Prop
  factorizationExistsNonzeroNonunit : Prop
  atomicCondition : Prop
  ufdCondition : Prop

structure IntegralDomainFactorizationEvidence (P : IntegralDomainFactorizationPackage) where
  isDomainClosed : P.isDomain
  irreducibleDefinedClosed : P.irreducibleDefined
  primeDefinedClosed : P.primeDefined
  factorizationExistsNonzeroNonunitClosed : P.factorizationExistsNonzeroNonunit

def IntegralDomainFactorizationClosed (P : IntegralDomainFactorizationPackage) : Prop :=
  P.isDomain ∧ P.irreducibleDefined ∧ P.primeDefined ∧ P.factorizationExistsNonzeroNonunit

theorem integralDomainFactorization_closed_from_evidence
    (P : IntegralDomainFactorizationPackage) (E : IntegralDomainFactorizationEvidence P) :
    IntegralDomainFactorizationClosed P := by
  exact And.intro E.isDomainClosed
    (And.intro E.irreducibleDefinedClosed
      (And.intro E.primeDefinedClosed E.factorizationExistsNonzeroNonunitClosed))

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse