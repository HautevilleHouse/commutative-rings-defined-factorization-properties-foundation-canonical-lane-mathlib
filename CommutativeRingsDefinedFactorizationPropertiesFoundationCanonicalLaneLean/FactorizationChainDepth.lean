import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure FactorizationChainDepthPackage (R : Type u) [CommRing R] where
  chainLength : ℕ → Prop
  chainLengthWellDefined : ∀ (n : ℕ), ChainLength n → (∀ (m : ℕ), m < n → ChainLength m)
  chainLengthStabilization : ∃ (N : ℕ), ∀ (n : ℕ), n ≥ N → (ChainLength n ↔ ChainLength N)
  chainLengthWellDefinedTerm : chainLengthWellDefined
  chainLengthStabilizationTerm : chainLengthStabilization

structure FactorizationChainDepthEvidence (F : FactorizationChainDepthPackage R) where
  chainLengthWellDefinedClosed : F.chainLengthWellDefined
  chainLengthStabilizationClosed : F.chainLengthStabilization

def FactorizationChainDepthClosed (F : FactorizationChainDepthPackage R) : Prop :=
  F.chainLengthWellDefined ∧ F.chainLengthStabilization

theorem factorization_chain_depth_closed_from_evidence (F : FactorizationChainDepthPackage R)
    (E : FactorizationChainDepthEvidence F) : FactorizationChainDepthClosed F := by
  exact And.intro E.chainLengthWellDefinedClosed E.chainLengthStabilizationClosed

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse