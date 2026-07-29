import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure ClassicalGroup where
  field : Type u
  char : Type v
  matrixGroup : Type w
  groupOperation : matrixGroup → matrixGroup → matrixGroup
  identityElement : matrixGroup
  inverseOperation : matrixGroup → matrixGroup
  closureUnderMultiplication : Prop
  closureUnderInverse : Prop

structure ClassicalGroupEvidence (G : ClassicalGroup) where
  closureUnderMultiplicationClosed : G.closureUnderMultiplication
  closureUnderInverseClosed : G.closureUnderInverse

def ClassicalGroupClosed (G : ClassicalGroup) : Prop :=
  G.closureUnderMultiplication ∧ G.closureUnderInverse

theorem classical_group_closed_from_evidence (G : ClassicalGroup) (E : ClassicalGroupEvidence G) :
    ClassicalGroupClosed G := by
  exact And.intro E.closureUnderMultiplicationClosed E.closureUnderInverseClosed

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
