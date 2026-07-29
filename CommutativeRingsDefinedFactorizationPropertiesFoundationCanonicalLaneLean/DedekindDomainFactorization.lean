import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure DedekindDomainFactorizationPackage (R : CommutativeRingObject) where
  integralClosureCondition : Prop
  dimensionOne : Prop
  noetherianCondition : Prop
  primeIdealFactorization : Prop
  classGroupStructure : Prop
  fractionalIdealTheory : Prop

structure DedekindDomainFactorizationEvidence {R : CommutativeRingObject}
    (D : DedekindDomainFactorizationPackage R) where
  integralClosureConditionClosed : D.integralClosureCondition
  dimensionOneClosed : D.dimensionOne
  noetherianConditionClosed : D.noetherianCondition
  primeIdealFactorizationClosed : D.primeIdealFactorization
  classGroupStructureClosed : D.classGroupStructure
  fractionalIdealTheoryClosed : D.fractionalIdealTheory

def DedekindDomainFactorizationClosed {R : CommutativeRingObject}
    (D : DedekindDomainFactorizationPackage R) : Prop :=
  D.integralClosureCondition ∧ D.dimensionOne ∧ D.noetherianCondition ∧
  D.primeIdealFactorization ∧ D.classGroupStructure ∧ D.fractionalIdealTheory

theorem dedekind_domain_factorization_closed_from_evidence
    {R : CommutativeRingObject} (D : DedekindDomainFactorizationPackage R)
    (E : DedekindDomainFactorizationEvidence D) : DedekindDomainFactorizationClosed D := by
  exact And.intro E.integralClosureConditionClosed
    (And.intro E.dimensionOneClosed
      (And.intro E.noetherianConditionClosed
        (And.intro E.primeIdealFactorizationClosed
          (And.intro E.classGroupStructureClosed E.fractionalIdealTheoryClosed))))

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse