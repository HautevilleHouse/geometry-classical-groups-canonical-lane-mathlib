import GeometryClassicalGroupsCanonicalLaneLean.LinearGroupStructure
import GeometryClassicalGroupsCanonicalLaneLean.OrthogonalGroupStructure
import GeometryClassicalGroupsCanonicalLaneLean.SymplecticGroupStructure
import GeometryClassicalGroupsCanonicalLaneLean.UnitaryGroupStructure

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

def GLnBridge {F : Type} [Field F] {n : ℕ} (G : GeneralLinearGroup F n) : Prop :=
  GLnClosed G

theorem gln_bridge_holds {F : Type} [Field F] {n : ℕ} (G : GeneralLinearGroup F n) : GLnBridge G := by
  exact And.intro G.invertible (And.intro G.groupOperation (And.intro G.identityElement G.closureUnderMultiplication))

def OrthogonalBridge {F : Type} [Field F] {n : ℕ} (O : OrthogonalGroup F n) : Prop :=
  OrthogonalGroupClosed O

theorem orthogonal_bridge_holds {F : Type} [Field F] {n : ℕ} (O : OrthogonalGroup F n) : OrthogonalBridge O := by
  exact And.intro O.preservesForm (And.intro O.groupOperation (And.intro O.identityElement O.closureUnderMultiplication))

def SymplecticBridge {F : Type} [Field F] {n : ℕ} (Sp : SymplecticGroup F n) : Prop :=
  SymplecticGroupClosed Sp

theorem symplectic_bridge_holds {F : Type} [Field F] {n : ℕ} (Sp : SymplecticGroup F n) : SymplecticBridge Sp := by
  exact And.intro Sp.preservesForm (And.intro Sp.groupOperation (And.intro Sp.identityElement Sp.closureUnderMultiplication))

def UnitaryBridge (U : UnitaryGroup) : Prop :=
  UnitaryGroupClosed U

theorem unitary_bridge_holds (U : UnitaryGroup) : UnitaryBridge U := by
  exact And.intro U.preservesForm (And.intro U.groupOperation (And.intro U.identityElement U.closureUnderMultiplication))

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse