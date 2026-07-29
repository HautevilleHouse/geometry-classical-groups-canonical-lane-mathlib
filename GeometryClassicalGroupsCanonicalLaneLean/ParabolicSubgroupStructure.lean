import canonicalLaneMathlib.AdmissibleClass
import GeometryClassicalGroupsCanonicalLaneLean.BruhatDecomposition

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure ParabolicSubgroupStructure (G : ClassicalGroup) where
  parabolicSubgroups : (G.matrixGroup → Prop) → Prop
  leviDecomposition : Prop
  flagVariety : Prop
  incidenceRelations : Prop

structure ParabolicSubgroupEvidence (G : ClassicalGroup) (P : ParabolicSubgroupStructure G) where
  leviDecompositionClosed : P.leviDecomposition
  flagVarietyClosed : P.flagVariety
  incidenceRelationsClosed : P.incidenceRelations

def ParabolicSubgroupClosed (G : ClassicalGroup) (P : ParabolicSubgroupStructure G) : Prop :=
  P.leviDecomposition ∧ P.flagVariety ∧ P.incidenceRelations

theorem parabolic_subgroup_closed_from_evidence (G : ClassicalGroup) (P : ParabolicSubgroupStructure G)
    (E : ParabolicSubgroupEvidence G P) : ParabolicSubgroupClosed G P := by
  exact And.intro E.leviDecompositionClosed
    (And.intro E.flagVarietyClosed E.incidenceRelationsClosed)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
