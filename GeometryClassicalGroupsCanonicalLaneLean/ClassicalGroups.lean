import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure ClassicalGroup where
  field : Type u
  vectorSpace : Type v
  bilinearForm : vectorSpace → vectorSpace → field
  nonDegenerate : Prop
  groupType : String -- "Orthogonal", "Symplectic", "Unitary"

structure OrthogonalGroup (V : Type u) [AddCommGroup V] [Module ℝ V] where
  form : V → V → ℝ
  symmetric : ∀ x y, form x y = form y x
  positiveDefinite : ∀ x, form x x ≥ 0 ∧ (form x x = 0 → x = 0)

structure SymplecticGroup (V : Type u) [AddCommGroup V] [Module ℝ V] where
  form : V → V → ℝ
  alternating : ∀ x, form x x = 0
  nonDegenerate : ∀ x, (∀ y, form x y = 0) → x = 0

structure UnitaryGroup (V : Type u) [AddCommGroup V] [Module ℂ V] where
  form : V → V → ℂ
  sesquilinear : ∀ x y z a b, form (a • x + b • y) z = a • form x z + b • form y z
  conjugateSymmetric : ∀ x y, form x y = conj (form y x)
  positiveDefinite : ∀ x, form x x ≥ 0 ∧ (form x x = 0 → x = 0)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse