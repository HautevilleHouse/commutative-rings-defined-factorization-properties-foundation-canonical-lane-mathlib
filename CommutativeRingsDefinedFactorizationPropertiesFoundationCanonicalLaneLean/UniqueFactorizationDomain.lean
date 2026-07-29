import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure UFDObject where
  carrier : Type u
  ring : CommRing carrier
  integralDomain : Prop
  factorizationExists : Prop
  factorizationUnique : Prop

structure IrreducibleFactorization where
  element : carrier
  irreducibles : List carrier
  product : ∏ i in irreducibles, i = element
  irreducibleEach : ∀ a ∈ irreducibles, Irreducible a

structure UFDObjectEvidence (U : UFDObject) where
  integralDomainClosed : U.integralDomain
  factorizationExistsClosed : U.factorizationExists
  factorizationUniqueClosed : U.factorizationUnique

def UFDObjectClosed (U : UFDObject) : Prop :=
  U.integralDomain ∧ U.factorizationExists ∧ U.factorizationUnique

theorem ufd_object_closed_from_evidence (U : UFDObject) (E : UFDObjectEvidence U) : UFDObjectClosed U := by
  exact And.intro E.integralDomainClosed (And.intro E.factorizationExistsClosed E.factorizationUniqueClosed)

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse