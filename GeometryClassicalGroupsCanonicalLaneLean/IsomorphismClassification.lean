import HautevilleHouse.GeometryClassicalGroupsCanonicalLaneLean.RootSystem
import HautevilleHouse.GeometryClassicalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure IsomorphismClassificationPackage where
  rootSystem : RootSystem
  dynkinDiagram : DynkinDiagram
  classificationUniqueness : Prop
  isomorphismTypeDetermined : Prop

structure IsomorphismClassificationEvidence (I : IsomorphismClassificationPackage) where
  classificationUniquenessClosed : I.classificationUniqueness
  isomorphismTypeDeterminedClosed : I.isomorphismTypeDetermined

def IsomorphismClassificationClosed (I : IsomorphismClassificationPackage) : Prop :=
  I.classificationUniqueness ∧ I.isomorphismTypeDetermined

theorem isomorphism_classification_closed_from_evidence (I : IsomorphismClassificationPackage)
    (E : IsomorphismClassificationEvidence I) : IsomorphismClassificationClosed I := by
  exact And.intro E.classificationUniquenessClosed E.isomorphismTypeDeterminedClosed

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse