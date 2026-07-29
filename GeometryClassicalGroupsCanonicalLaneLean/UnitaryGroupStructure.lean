import GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupAdmittedObject

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure UnitaryGroup {n : ℕ} where
  matrices : Type
  innerProductForm : Type
  preservesForm : Prop
  groupOperation : Prop
  identityElement : Prop
  closureUnderMultiplication : Prop

def UnitaryGroupClosed (U : UnitaryGroup) : Prop :=
  U.preservesForm ∧ U.groupOperation ∧ U.identityElement ∧ U.closureUnderMultiplication

theorem unitary_is_classical (U : UnitaryGroup) :
  ClassicalGroupWitnessClosed (ClassicalGroupAdmittedObject.mk (ClassicalGroupSpace.mk (U.matrices) ℂ ℂ) (U.matrices) (U.matrices) U.preservesForm U.preservesForm (by
    exact U.preservesForm)) :=
  U.preservesForm

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse