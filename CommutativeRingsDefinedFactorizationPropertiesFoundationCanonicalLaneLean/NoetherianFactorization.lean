import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure NoetherianFactorizationPackage (R : CommutativeRingObject) where
  ascendingChainCondition : Prop
  finiteGenerationOfIdeals : Prop
  primaryDecomposition : Prop
  associatedPrimes : Prop
  zeroDivisorStructure : Prop

structure NoetherianFactorizationEvidence {R : CommutativeRingObject}
    (N : NoetherianFactorizationPackage R) where
  ascendingChainConditionClosed : N.ascendingChainCondition
  finiteGenerationOfIdealsClosed : N.finiteGenerationOfIdeals
  primaryDecompositionClosed : N.primaryDecomposition
  associatedPrimesClosed : N.associatedPrimes
  zeroDivisorStructureClosed : N.zeroDivisorStructure

def NoetherianFactorizationClosed {R : CommutativeRingObject}
    (N : NoetherianFactorizationPackage R) : Prop :=
  N.ascendingChainCondition ∧ N.finiteGenerationOfIdeals ∧
  N.primaryDecomposition ∧ N.associatedPrimes ∧ N.zeroDivisorStructure

theorem noetherian_factorization_closed_from_evidence
    {R : CommutativeRingObject} (N : NoetherianFactorizationPackage R)
    (E : NoetherianFactorizationEvidence N) : NoetherianFactorizationClosed N := by
  exact And.intro E.ascendingChainConditionClosed
    (And.intro E.finiteGenerationOfIdealsClosed
      (And.intro E.primaryDecompositionClosed
        (And.intro E.associatedPrimesClosed E.zeroDivisorStructureClosed)))

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse