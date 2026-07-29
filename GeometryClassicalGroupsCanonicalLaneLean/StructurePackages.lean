import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryClassicalGroupsCanonicalLaneLean.ClassicalGroupDefinitions

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure GeneralLinearPackage (n : ℕ) (F : Type) [Field F] where
  group : Type
  multiplication : group → group → group
  identity : group
  inverse : group → group
  group_laws : Group group
  representation : group → Matrix (Fin n) (Fin n) F
  faithful : Function.Injective representation

structure SpecialLinearPackage (n : ℕ) (F : Type) [Field F] where
  group : Type
  multiplication : group → group → group
  identity : group
  inverse : group → group
  group_laws : Group group
  representation : group → Matrix (Fin n) (Fin n) F
  det_one : ∀ g : group, (representation g).det = 1

structure OrthogonalPackage (n : ℕ) (F : Type) [Field F] where
  group : Type
  multiplication : group → group → group
  identity : group
  inverse : group → group
  group_laws : Group group
  representation : group → Matrix (Fin n) (Fin n) F
  orthogonal_cond : ∀ g : group, representation g * (representation g)ᵀ = 1

structure SymplecticPackage (n : ℕ) (F : Type) [Field F] where
  group : Type
  multiplication : group → group → group
  identity : group
  inverse : group → group
  group_laws : Group group
  representation : group → Matrix (Fin (2*n)) (Fin (2*n)) F
  symplectic_cond : ∀ g : group, representation g * J * (representation g)ᵀ = J
  where J : Matrix (Fin (2*n)) (Fin (2*n)) F := sorry

structure UnitaryPackage (n : ℕ) where
  group : Type
  multiplication : group → group → group
  identity : group
  inverse : group → group
  group_laws : Group group
  representation : group → Matrix (Fin n) (Fin n) ℂ
  unitary_cond : ∀ g : group, representation g * adjoint (representation g) = 1

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse