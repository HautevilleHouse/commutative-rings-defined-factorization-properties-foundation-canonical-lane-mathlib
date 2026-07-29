import CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure UniqueFactorizationDomainStructure where
  carrier : Ring
  factorizationProperty : Prop
  units : Set carrier
  irreducibles : Set carrier
  factorizationUnique : Prop

def UFDStructureEvidence (U : UniqueFactorizationDomainStructure) where
  factorizationPropertyClosed : U.factorizationProperty
  factorizationUniqueClosed : U.factorizationUnique

def UFDStructureClosed (U : UniqueFactorizationDomainStructure) : Prop :=
  U.factorizationProperty ∧ U.factorizationUnique

theorem ufd_structure_closed_from_evidence (U : UniqueFactorizationDomainStructure)
    (E : UFDStructureEvidence U) : UFDStructureClosed U := by
  exact And.intro E.factorizationPropertyClosed E.factorizationUniqueClosed

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse