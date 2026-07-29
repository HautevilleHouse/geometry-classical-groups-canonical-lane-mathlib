import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure ClassicalGroup where
  carrier : Type
  product : carrier → carrier → carrier
  inverse : carrier → carrier
  identity : carrier
  associativity : ∀ a b c : carrier, product (product a b) c = product a (product b c)
  identityLeft : ∀ a : carrier, product identity a = a
  identityRight : ∀ a : carrier, product a identity = a
  inverseLeft : ∀ a : carrier, product (inverse a) a = identity
  inverseRight : ∀ a : carrier, product a (inverse a) = identity

structure LinearGroup (n : ℕ) where
  field : Type
  fieldAdd : field → field → field
  fieldMul : field → field → field
  fieldZero : field
  fieldOne : field
  fieldAxioms : fieldAdd ∧ fieldMul ∧ fieldZero ∧ fieldOne
  group : ClassicalGroup
  representation : group.carrier → (Fin n → Fin n → field)
  detNonzero : ∀ g : group.carrier, (representation g).det ≠ fieldZero

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse