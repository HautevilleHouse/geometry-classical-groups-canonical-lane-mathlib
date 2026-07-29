import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure ParabolicSubgroup (G : Type u) [Group G] where
  subgroup : Subgroup G
  containsBorel : Prop
  lieAlgebra : Type v
  parabolicSubalgebra : Prop
  leviDecomposition : Prop
  unipotentRadical : Subgroup G
  leviFactor : Subgroup G
  decomposition : Prop

structure ParabolicSubgroupEvidence (G : Type u) [Group G] (P : ParabolicSubgroup G) where
  containsBorelClosed : P.containsBorel
  leviDecompositionClosed : P.leviDecomposition
  decompositionClosed : P.decomposition

def ParabolicSubgroupClosed (G : Type u) [Group G] (P : ParabolicSubgroup G) : Prop :=
  P.containsBorel ∧ P.leviDecomposition ∧ P.decomposition

theorem parabolic_subgroup_closed_from_evidence (G : Type u) [Group G] (P : ParabolicSubgroup G)
    (E : ParabolicSubgroupEvidence G P) : ParabolicSubgroupClosed G P := by
  exact And.intro E.containsBorelClosed
    (And.intro E.leviDecompositionClosed E.decompositionClosed)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
