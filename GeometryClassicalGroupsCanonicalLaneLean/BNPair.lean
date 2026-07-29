import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure BNPair (G : Type u) [Group G] (B : Subgroup G) (N : Subgroup G) where
  intersection : Subgroup G
  weylGroup : Type v
  weylGroupGroup : Group weylGroup
  isomorphism : weylGroup ≃* (N / intersection)
  axioms : Prop
  bruhatDecomposition : Prop
  doubleCosetRepresentatives : Prop

structure BNPairEvidence (G : Type u) [Group G] (B : Subgroup G) (N : Subgroup G) (P : BNPair G B N) where
  axiomsClosed : P.axioms
  bruhatDecompositionClosed : P.bruhatDecomposition
  doubleCosetRepresentativesClosed : P.doubleCosetRepresentatives

def BNPairClosed (G : Type u) [Group G] (B : Subgroup G) (N : Subgroup G) (P : BNPair G B N) : Prop :=
  P.axioms ∧ P.bruhatDecomposition ∧ P.doubleCosetRepresentatives

theorem bn_pair_closed_from_evidence (G : Type u) [Group G] (B : Subgroup G) (N : Subgroup G)
    (P : BNPair G B N) (E : BNPairEvidence G B N P) : BNPairClosed G B N P := by
  exact And.intro E.axiomsClosed
    (And.intro E.bruhatDecompositionClosed E.doubleCosetRepresentativesClosed)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
