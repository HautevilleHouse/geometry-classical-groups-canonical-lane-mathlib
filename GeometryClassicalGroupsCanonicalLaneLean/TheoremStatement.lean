import GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupAdmittedObject

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "geometry-classical-groups-canonical-lane"
  theoremName := "Geometry Classical Groups"
  theoremObject := "Classical group structures over fields"
  classicalBoundary := "unrestricted classical closure"
  constrainedStatement := "admissible-class bridge closure for classical groups"
  certificateLane := "manifold_constrained"
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.classicalBoundary = "unrestricted classical closure"

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "geometry-classical-groups-canonical-lane" := by
  rfl

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse