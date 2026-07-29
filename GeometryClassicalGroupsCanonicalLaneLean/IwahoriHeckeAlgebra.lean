import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure IwahoriHeckeAlgebra (R : Type u) [CommRing R] (W : Type v) [Group W] where
  generators : Set (W → W)
  relations : Prop
  parameter : R
  quadraticRelation : Prop
  basis : Set (W → R)
  representation : Prop

structure IwahoriHeckeAlgebraEvidence (R : Type u) [CommRing R] (W : Type v) [Group W]
    (H : IwahoriHeckeAlgebra R W) where
  relationsClosed : H.relations
  quadraticRelationClosed : H.quadraticRelation
  representationClosed : H.representation

def IwahoriHeckeAlgebraClosed (R : Type u) [CommRing R] (W : Type v) [Group W] (H : IwahoriHeckeAlgebra R W) : Prop :=
  H.relations ∧ H.quadraticRelation ∧ H.representation

theorem iwahori_hecke_algebra_closed_from_evidence (R : Type u) [CommRing R] (W : Type v) [Group W]
    (H : IwahoriHeckeAlgebra R W) (E : IwahoriHeckeAlgebraEvidence R W H) : IwahoriHeckeAlgebraClosed R W H := by
  exact And.intro E.relationsClosed
    (And.intro E.quadraticRelationClosed E.representationClosed)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
