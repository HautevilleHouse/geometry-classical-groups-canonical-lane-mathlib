import canonicalLaneMathlib.AdmissibleClass
import GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupStructure

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure BruhatDecompositionPackage (G : ClassicalGroup) where
  borelSubgroup : G.matrixGroup → Prop
  weylGroup : Type u
  doubleCosetDecomposition : Prop
  cellMultiplication : Prop
  closureUnderMultiplication : G.closureUnderMultiplication
  closureUnderInverse : G.closureUnderInverse

structure BruhatDecompositionEvidence (G : ClassicalGroup) (B : BruhatDecompositionPackage G) where
  doubleCosetDecompositionClosed : B.doubleCosetDecomposition
  cellMultiplicationClosed : B.cellMultiplication

def BruhatDecompositionClosed (G : ClassicalGroup) (B : BruhatDecompositionPackage G) : Prop :=
  B.doubleCosetDecomposition ∧ B.cellMultiplication ∧ ClassicalGroupClosed G

theorem bruhat_decomposition_closed_from_evidence (G : ClassicalGroup) (B : BruhatDecompositionPackage G)
    (E : BruhatDecompositionEvidence G B) : BruhatDecompositionClosed G B := by
  exact And.intro E.doubleCosetDecompositionClosed
    (And.intro E.cellMultiplicationClosed
      (classical_group_closed_from_evidence G
        { closureUnderMultiplicationClosed := B.closureUnderMultiplication
          closureUnderInverseClosed := B.closureUnderInverse }))

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
