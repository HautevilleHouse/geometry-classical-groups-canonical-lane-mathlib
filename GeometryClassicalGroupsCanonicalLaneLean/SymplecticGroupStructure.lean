import GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupAdmittedObject

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure SymplecticGroup {F : Type} [Field F] (n : ℕ) where
  matrices : Type
  symplecticForm : Type
  preservesForm : Prop
  groupOperation : Prop
  identityElement : Prop
  closureUnderMultiplication : Prop

def SymplecticGroupClosed {F : Type} [Field F] {n : ℕ} (Sp : SymplecticGroup F n) : Prop :=
  Sp.preservesForm ∧ Sp.groupOperation ∧ Sp.identityElement ∧ Sp.closureUnderMultiplication

theorem symplectic_is_classical {F : Type} [Field F] {n : ℕ} (Sp : SymplecticGroup F n) :
  ClassicalGroupWitnessClosed (ClassicalGroupAdmittedObject.mk (ClassicalGroupSpace.mk (Sp.matrices) F F) (Sp.matrices) (Sp.matrices) Sp.preservesForm Sp.preservesForm (by
    exact Sp.preservesForm)) :=
  Sp.preservesForm

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse