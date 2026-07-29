import GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupAdmittedObject

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure OrthogonalGroup {F : Type} [Field F] (n : ℕ) where
  matrices : Type
  bilinearForm : Type
  preservesForm : Prop
  groupOperation : Prop
  identityElement : Prop
  closureUnderMultiplication : Prop

def OrthogonalGroupClosed {F : Type} [Field F] {n : ℕ} (O : OrthogonalGroup F n) : Prop :=
  O.preservesForm ∧ O.groupOperation ∧ O.identityElement ∧ O.closureUnderMultiplication

theorem orthogonal_is_classical {F : Type} [Field F] {n : ℕ} (O : OrthogonalGroup F n) :
  ClassicalGroupWitnessClosed (ClassicalGroupAdmittedObject.mk (ClassicalGroupSpace.mk (O.matrices) F F) (O.matrices) (O.matrices) O.preservesForm O.preservesForm (by
    exact O.preservesForm)) :=
  O.preservesForm

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse