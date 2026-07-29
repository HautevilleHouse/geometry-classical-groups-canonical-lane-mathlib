import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure HolomorphicLineBundle (M : Type u) [TopologicalSpace M] [ComplexManifold M] where
  totalSpace : Type v
  projection : totalSpace → M
  fiber : ℂ
  trivialization : Set (LocalHomeomorph totalSpace (M × ℂ))
  holomorphicStructure : ComplexManifold totalSpace

structure Section (L : HolomorphicLineBundle M) where
  sectionMap : M → L.totalSpace
  projectionCond : ∀ x, L.projection (sectionMap x) = x
  holomorphic : ComplexMap M L.totalSpace sectionMap

structure BorelWeilConstruction (G : Type u) [LieGroup G] (B : Subgroup G) (λ : Weight) where
  lineBundle : HolomorphicLineBundle (G / B)
  globalSections : VectorSpace ℂ (Set (Section lineBundle))
  dimensionFormula : finrank ℂ globalSections = dimRep λ

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse