import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean.UniqueFactorizationDomain

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure PolynomialFactorizationPackage (U : UniqueFactorizationDomainPackage) where
  polynomialRing : Type u
  polynomialRingStructure : CommRing polynomialRing
  coefficientsDomain : U.domain
  polynomialUniqueFactorization : Prop
  contentFactorization : Prop
  gaussLemma : Prop

structure PolynomialFactorizationEvidence {U : UniqueFactorizationDomainPackage}
    (R : PolynomialFactorizationPackage U) where
  polynomialUniqueFactorizationClosed : R.polynomialUniqueFactorization
  contentFactorizationClosed : R.contentFactorization
  gaussLemmaClosed : R.gaussLemma

def PolynomialFactorizationClosed {U : UniqueFactorizationDomainPackage}
    (R : PolynomialFactorizationPackage U) : Prop :=
  R.polynomialUniqueFactorization ∧ R.contentFactorization ∧ R.gaussLemma

theorem polynomial_factorization_closed_from_evidence
    {U : UniqueFactorizationDomainPackage}
    (R : PolynomialFactorizationPackage U)
    (E : PolynomialFactorizationEvidence R) : PolynomialFactorizationClosed R := by
  exact And.intro E.polynomialUniqueFactorizationClosed
    (And.intro E.contentFactorizationClosed E.gaussLemmaClosed)

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
