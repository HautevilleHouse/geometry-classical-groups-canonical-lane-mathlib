import GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupAdmittedObject

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure GeneralLinearGroup {F : Type} [Field F] (n : ℕ) where
  matrices : Type
  invertible : Prop
  groupOperation : Prop
  identityElement : Prop
  closureUnderMultiplication : Prop

def GLnClosed {F : Type} [Field F] {n : ℕ} (G : GeneralLinearGroup F n) : Prop :=
  G.invertible ∧ G.groupOperation ∧ G.identityElement ∧ G.closureUnderMultiplication

structure SpecialLinearGroup {F : Type} [Field F] (n : ℕ) extends GeneralLinearGroup F n where
  determinantOne : Prop

def SLnClosed {F : Type} [Field F] {n : ℕ} (S : SpecialLinearGroup F n) : Prop :=
  GLnClosed S.toGeneralLinearGroup ∧ S.determinantOne

theorem gln_is_classical {F : Type} [Field F] {n : ℕ} (G : GeneralLinearGroup F n) : 
  ClassicalGroupWitnessClosed (ClassicalGroupAdmittedObject.mk (ClassicalGroupSpace.mk (G.matrices) F F) (G.matrices) (G.matrices) G.closureUnderMultiplication G.closureUnderMultiplication (by
    exact G.closureUnderMultiplication)) := by
  exact G.closureUnderMultiplication

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse