import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure FlagVariety (k : Type u) [Field k] where
  dimension : ℕ
  completeFlag : Prop
  partialFlag : Prop
  borelSubgroup : Prop
  parabolicSubgroups : Set (Set (k → k))
  projectiveHomogeneous : Prop

structure FlagVarietyEvidence (k : Type u) [Field k] (F : FlagVariety k) where
  completeFlagClosed : F.completeFlag
  projectiveHomogeneousClosed : F.projectiveHomogeneous
  borelSubgroupClosed : F.borelSubgroup

def FlagVarietyClosed (k : Type u) [Field k] (F : FlagVariety k) : Prop :=
  F.completeFlag ∧ F.projectiveHomogeneous ∧ F.borelSubgroup

theorem flag_variety_closed_from_evidence (k : Type u) [Field k] (F : FlagVariety k)
    (E : FlagVarietyEvidence k F) : FlagVarietyClosed k F := by
  exact And.intro E.completeFlagClosed
    (And.intro E.projectiveHomogeneousClosed E.borelSubgroupClosed)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
