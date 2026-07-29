import GeometryClassicalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure Projection (S : Type) where
  toFun : S → S
  idempotent : ∀ x, toFun (toFun x) = toFun x

def classicalGroupProjection : Projection (ClassicalGroupAdmittedObject) := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem classical_group_projection_idempotent (x : ClassicalGroupAdmittedObject) :
    classicalGroupProjection.toFun (classicalGroupProjection.toFun x) = classicalGroupProjection.toFun x := by
  exact classicalGroupProjection.idempotent x

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse