import GeometryClassicalGroupsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassicalGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse