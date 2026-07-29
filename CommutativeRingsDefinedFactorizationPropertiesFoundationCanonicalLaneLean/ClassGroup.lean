import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean.DedekindDomain

namespace HautevilleHouse
namespace CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean

structure ClassGroupPackage (D : DedekindDomainPackage) where
  fractionalIdeals : Type u
  groupStructure : Group fractionalIdeals
  principalFractionalIdeals : Subgroup fractionalIdeals
  classGroup : quotientGroup := fractionalIdeals ⧸ principalFractionalIdeals
  classGroupFinite : Prop
  classNumberDefined : Prop

structure ClassGroupEvidence {D : DedekindDomainPackage}
    (C : ClassGroupPackage D) where
  classGroupFiniteClosed : C.classGroupFinite
  classNumberDefinedClosed : C.classNumberDefined

def ClassGroupClosed {D : DedekindDomainPackage}
    (C : ClassGroupPackage D) : Prop :=
  C.classGroupFinite ∧ C.classNumberDefined

theorem class_group_closed_from_evidence
    {D : DedekindDomainPackage}
    (C : ClassGroupPackage D) (E : ClassGroupEvidence C) : ClassGroupClosed C := by
  exact And.intro E.classGroupFiniteClosed E.classNumberDefinedClosed

end CommutativeRingsDefinedFactorizationPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
