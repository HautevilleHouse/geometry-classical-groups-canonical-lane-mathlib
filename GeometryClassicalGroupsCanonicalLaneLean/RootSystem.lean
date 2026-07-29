import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure RootSystem (V : Type u) [AddCommGroup V] [Module ℝ V] where
  roots : Set V
  rank : ℕ
  crystallographic : Prop
  reduced : Prop
  rootReflections : V → (V → V)
  rootReflectionInvolution : ∀ α ∈ roots, (rootReflections α) ∘ (rootReflections α) = id
  rootIntegrality : ∀ α β ∈ roots, (rootReflections α) β - β ∈ ℤ • α

structure RootSystemEvidence (V : Type u) [AddCommGroup V] [Module ℝ V] (R : RootSystem V) where
  crystallographicClosed : R.crystallographic
  reducedClosed : R.reduced
  rootReflectionInvolutionClosed : ∀ α ∈ R.roots, (R.rootReflections α) ∘ (R.rootReflections α) = id
  rootIntegralityClosed : ∀ α β ∈ R.roots, (R.rootReflections α) β - β ∈ ℤ • α

def RootSystemClosed (V : Type u) [AddCommGroup V] [Module ℝ V] (R : RootSystem V) : Prop :=
  R.crystallographic ∧ R.reduced ∧
  (∀ α ∈ R.roots, (R.rootReflections α) ∘ (R.rootReflections α) = id) ∧
  (∀ α β ∈ R.roots, (R.rootReflections α) β - β ∈ ℤ • α)

theorem root_system_closed_from_evidence (V : Type u) [AddCommGroup V] [Module ℝ V] (R : RootSystem V)
    (E : RootSystemEvidence V R) : RootSystemClosed V R := by
  exact And.intro E.crystallographicClosed
    (And.intro E.reducedClosed
      (And.intro E.rootReflectionInvolutionClosed E.rootIntegralityClosed))

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
