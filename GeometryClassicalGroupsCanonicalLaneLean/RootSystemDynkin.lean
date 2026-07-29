import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure RootSystem where
  vectorSpace : Type u
  innerProduct : vectorSpace → vectorSpace → ℝ
  roots : Set vectorSpace
  rootProperties : 
    (∀ α ∈ roots, α ≠ 0) ∧
    (∀ α ∈ roots, ∃ β ∈ roots, (innerProduct α β) ≠ 0) ∧
    (∀ α ∈ roots, ∀ k : ℤ, (k • α) ∈ roots ↔ |k| ≤ 1) ∧
    (∀ α β ∈ roots, (2 * innerProduct α β) / (innerProduct β β) ∈ ℤ)

data DynkinDiagram : Type 1 where
  | A_n (n : ℕ)
  | B_n (n : ℕ)
  | C_n (n : ℕ)
  | D_n (n : ℕ)
  | E_6 | E_7 | E_8
  | F_4 | G_2

structure SimpleLieAlgebra where
  rootSystem : RootSystem
  dynkinType : DynkinDiagram
  rank : ℕ
  dimension : ℕ

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse