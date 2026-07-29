import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure AssociateClassPackage (R : Type u) [CommRing R] where
  associateRelation : R → R → Prop
  associateRelationEquivalence : Equivalence associateRelation
  associateRelationMultUnit : ∀ (a b : R), associateRelation a b ↔ ∃ (u : Units R), a = u * b
  associateRelationEquivalenceTerm : associateRelationEquivalence
  associateRelationMultUnitTerm : associateRelationMultUnit

structure AssociateClassEvidence {R : Type u} [CommRing R] (A : AssociateClassPackage R) where
  associateRelationEquivalenceClosed : A.associateRelationEquivalence
  associateRelationMultUnitClosed : A.associateRelationMultUnit

def AssociateClassClosed {R : Type u} [CommRing R] (A : AssociateClassPackage R) : Prop :=
  A.associateRelationEquivalence ∧ A.associateRelationMultUnit

theorem associate_class_closed_from_evidence {R : Type u} [CommRing R] (A : AssociateClassPackage R)
    (E : AssociateClassEvidence A) : AssociateClassClosed A := by
  exact And.intro E.associateRelationEquivalenceClosed E.associateRelationMultUnitClosed

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse