import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure Flag where
  subspaceChain : List (Submodule ℝ (Fin n → ℝ))
  strictInclusion : ∀ i, subspaceChain[i] < subspaceChain[i+1]
  dimensionCond : ∀ i, finrank ℝ subspaceChain[i] = i

structure CompleteFlag (V : Type u) [AddCommGroup V] [Module ℝ V] where
  subspaces : ℕ → Submodule ℝ V
  flagProperties : (∀ i, subspaces i ≤ subspaces (i+1)) ∧
    (subspaces 0 = ⊥) ∧ (subspaces (finrank ℝ V) = ⊤) ∧
    (∀ i, finrank ℝ (subspaces (i+1)) = finrank ℝ (subspaces i) + 1)

structure BruhatDecomposition where
  weylGroup : Set (LinearEquiv ℝ V V)
  cells : LinearEquiv ℝ V V → Set (CompleteFlag V)
  cellProperties : ∀ w, (cells w) ≠ ∅ ∧ 
    (∃ w0, cells w0 = cells w) ∧
    (cells w) ∩ (cells w') = ∅ → w = w'

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse