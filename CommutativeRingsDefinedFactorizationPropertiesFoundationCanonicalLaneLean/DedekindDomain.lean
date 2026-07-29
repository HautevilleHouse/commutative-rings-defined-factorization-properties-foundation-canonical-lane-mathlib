import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean.IdealFactorization

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure DedekindDomainPackage (P : IdealFactorizationPackage) where
  ring : P.ring
  noetherian : Prop
  integrallyClosed : Prop
  primeIdealInverseExists : Prop
  fractionalIdealTheory : Prop

structure DedekindDomainEvidence {P : IdealFactorizationPackage}
    (D : DedekindDomainPackage P) where
  noetherianClosed : D.noetherian
  integrallyClosedClosed : D.integrallyClosed
  primeIdealInverseExistsClosed : D.primeIdealInverseExists
  fractionalIdealTheoryClosed : D.fractionalIdealTheory

def DedekindDomainClosed {P : IdealFactorizationPackage}
    (D : DedekindDomainPackage P) : Prop :=
  D.noetherian ∧ D.integrallyClosed ∧ D.primeIdealInverseExists ∧ D.fractionalIdealTheory

theorem dedekind_domain_closed_from_evidence
    {P : IdealFactorizationPackage}
    (D : DedekindDomainPackage P)
    (E : DedekindDomainEvidence D) : DedekindDomainClosed D := by
  exact And.intro E.noetherianClosed
    (And.intro E.integrallyClosedClosed
      (And.intro E.primeIdealInverseExistsClosed E.fractionalIdealTheoryClosed))

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
