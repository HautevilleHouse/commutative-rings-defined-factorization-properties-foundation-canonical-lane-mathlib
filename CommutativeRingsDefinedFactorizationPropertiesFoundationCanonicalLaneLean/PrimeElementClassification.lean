import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure PrimeElementPackage (R : Type u) [CommRing R] where
  primeSet : Set R
  primeCondition : ∀ (p : R), p ∈ primeSet ↔ p ≠ 0 ∧ ¬ IsUnit p ∧ ∀ (a b : R), p ∣ a * b → p ∣ a ∨ p ∣ b
  primeConditionTerm : primeCondition

structure PrimeElementEvidence {R : Type u} [CommRing R] (P : PrimeElementPackage R) where
  primeConditionClosed : P.primeCondition

def PrimeElementClosed {R : Type u} [CommRing R] (P : PrimeElementPackage R) : Prop :=
  P.primeCondition

theorem prime_element_closed_from_evidence {R : Type u} [CommRing R] (P : PrimeElementPackage R)
    (E : PrimeElementEvidence P) : PrimeElementClosed P := by
  exact E.primeConditionClosed

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse