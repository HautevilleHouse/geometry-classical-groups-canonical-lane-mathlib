import GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupAdmittedObject

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : ClassicalGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClassicalGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse