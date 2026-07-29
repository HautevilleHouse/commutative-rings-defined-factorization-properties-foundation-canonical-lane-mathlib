import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure IrreducibleElementPackage (R : Type u) [CommRing R] where
  irreducibleSet : Set R
  irreducibleCondition : ∀ (a : R), a ∈ irreducibleSet ↔ a ≠ 0 ∧ ¬ IsUnit a ∧ ∀ (b c : R), a = b * c → IsUnit b ∨ IsUnit c
  irreducibleConditionTerm : irreducibleCondition

structure IrreducibleElementEvidence {R : Type u} [CommRing R] (I : IrreducibleElementPackage R) where
  irreducibleConditionClosed : I.irreducibleCondition

def IrreducibleElementClosed {R : Type u} [CommRing R] (I : IrreducibleElementPackage R) : Prop :=
  I.irreducibleCondition

theorem irreducible_element_closed_from_evidence {R : Type u} [CommRing R] (I : IrreducibleElementPackage R)
    (E : IrreducibleElementEvidence I) : IrreducibleElementClosed I := by
  exact E.irreducibleConditionClosed

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse