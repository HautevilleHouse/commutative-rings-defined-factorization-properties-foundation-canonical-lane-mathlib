import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure IdealFactorizationPackage where
  ring : Type u
  ringStructure : CommRing ring
  ideal : Type v
  primeIdeals : Set ideal
  factorizationExists : Prop
  uniquenessUpToOrder : Prop
  primeIdealStructure : Prop

structure IdealFactorizationEvidence (P : IdealFactorizationPackage) where
  factorizationExistsClosed : P.factorizationExists
  uniquenessUpToOrderClosed : P.uniquenessUpToOrder
  primeIdealStructureClosed : P.primeIdealStructure

def IdealFactorizationClosed (P : IdealFactorizationPackage) : Prop :=
  P.factorizationExists ∧ P.uniquenessUpToOrder ∧ P.primeIdealStructure

theorem ideal_factorization_closed_from_evidence (P : IdealFactorizationPackage)
    (E : IdealFactorizationEvidence P) : IdealFactorizationClosed P := by
  exact And.intro E.factorizationExistsClosed
    (And.intro E.uniquenessUpToOrderClosed E.primeIdealStructureClosed)

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
