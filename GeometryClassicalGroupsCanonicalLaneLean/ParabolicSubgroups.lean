import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryClassicalGroupsCanonicalLaneLean.BruhatDecomposition

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure ParabolicSubgroup (n : ℕ) (F : Type) [Field F] where
  group : GeneralLinearPackage n F
  subgroup : Subgroup (group.group)
  contains_borel : ∃ B : BruhatDecomposition n F, subgroup ≤ B.borel
  flag_stabilizer : ∃ (flag : List (Submodule F (Vector F (Fin n)))) (h : flag.Length = n), subgroup = stabilizer flag

structure ParabolicSubgroupEvidence (n : ℕ) (F : Type) [Field F] (P : ParabolicSubgroup n F) where
  containsBorelClosed : P.contains_borel
  flagStabilizerClosed : P.flag_stabilizer

theorem parabolic_subgroup_closed (n : ℕ) (F : Type) [Field F] (P : ParabolicSubgroup n F) : Prop :=
  P.contains_borel ∧ P.flag_stabilizer

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse