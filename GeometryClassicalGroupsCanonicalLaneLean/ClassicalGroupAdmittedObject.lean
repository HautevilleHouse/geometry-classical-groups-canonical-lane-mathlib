import GeometryClassicalGroupsCanonicalLaneLean.TheoremStatement
import Mathlib.GroupTheory.Subgroup

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure ClassicalGroupSpace where
  carrier : Type
  field : Type
  vectorSpace : Type

def ClassicalGroupWitnessClosed (O : ClassicalGroupAdmittedObject) : Prop :=
  O.elementIsClassical

structure ClassicalGroupAdmittedObject where
  space : ClassicalGroupSpace
  group : Type
  representation : Type
  preservesForm : Prop
  elementIsClassical : Prop
  conclusion : elementIsClassical

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse