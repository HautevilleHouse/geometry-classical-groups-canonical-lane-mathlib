import canonicalLaneMathlib.AdmissibleClass
import GeometryClassicalGroupsCanonicalLaneLean.ParabolicSubgroupStructure

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

def ConstrainedGeometryClassicalGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometry_classical_groups_endgame (A : AdmissibleClass) :
    ConstrainedGeometryClassicalGroupsClosure A :=
  by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
