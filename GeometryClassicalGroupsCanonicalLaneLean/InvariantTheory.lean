import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure GroupAction (G : Type u) (V : Type v) [Group G] [AddCommGroup V] [Module ℝ V] where
  action : G → V → V
  actionProperties : (∀ g h v, action (g * h) v = action g (action h v)) ∧
    (∀ v, action 1 v = v) ∧ (∀ g v w, action g (v + w) = action g v + action g w)

structure InvariantPolynomial (G : Type u) [Group G] (V : Type v) [AddCommGroup V] [Module ℝ V] 
    (action : GroupAction G V) where
  polynomial : (V → ℝ)
  invariant : ∀ g v, polynomial (action.action g v) = polynomial v
  polynomialForm : Polynomial (Fin (finrank ℝ V)) ℝ

structure RingOfInvariants (G : Type u) [Group G] (V : Type v) [AddCommGroup V] [Module ℝ V]
    (action : GroupAction G V) where
  invariants : Set (InvariantPolynomial G V action)
  closedUnderOps : (∀ p q ∈ invariants, p + q ∈ invariants) ∧
    (∀ p q ∈ invariants, p * q ∈ invariants) ∧
    (∀ p ∈ invariants, ∀ c : ℝ, c • p ∈ invariants)

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse