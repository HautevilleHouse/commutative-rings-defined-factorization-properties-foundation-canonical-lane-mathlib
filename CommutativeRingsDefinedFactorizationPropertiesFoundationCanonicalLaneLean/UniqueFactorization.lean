import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure UniqueFactorizationPackage (R : CommutativeRingObject) where
  irreducibleFactorization : Prop
  uniquenessUpToUnits : Prop
  atomFactorization : Prop
  primeElementCondition : Prop
  gcdExist : Prop
  lcmExist : Prop

structure UniqueFactorizationEvidence {R : CommutativeRingObject} (U : UniqueFactorizationPackage R) where
  irreducibleFactorizationClosed : U.irreducibleFactorization
  uniquenessUpToUnitsClosed : U.uniquenessUpToUnits
  atomFactorizationClosed : U.atomFactorization
  primeElementConditionClosed : U.primeElementCondition
  gcdExistClosed : U.gcdExist
  lcmExistClosed : U.lcmExist

def UniqueFactorizationClosed {R : CommutativeRingObject} (U : UniqueFactorizationPackage R) : Prop :=
  U.irreducibleFactorization ∧ U.uniquenessUpToUnits ∧ U.atomFactorization ∧
  U.primeElementCondition ∧ U.gcdExist ∧ U.lcmExist

theorem unique_factorization_closed_from_evidence
    {R : CommutativeRingObject} (U : UniqueFactorizationPackage R)
    (E : UniqueFactorizationEvidence U) : UniqueFactorizationClosed U := by
  exact And.intro E.irreducibleFactorizationClosed
    (And.intro E.uniquenessUpToUnitsClosed
      (And.intro E.atomFactorizationClosed
        (And.intro E.primeElementConditionClosed
          (And.intro E.gcdExistClosed E.lcmExistClosed))))

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse