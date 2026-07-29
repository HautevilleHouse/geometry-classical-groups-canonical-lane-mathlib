import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure CartanSubalgebra where
  lieAlgebra : Type u
  subalgebra : Set lieAlgebra
  abelian : ∀ x y ∈ subalgebra, [x, y] = 0
  selfNormalizing : subalgebra = {x | ∀ y ∈ subalgebra, [x, y] ∈ subalgebra}

structure Weight where
  weights : CartanSubalgebra → ℝ
  linearity : ∀ x y, weights (x + y) = weights x + weights y
  integrality : ∀ α ∈ rootSystem, (2 * weights α) / (α α) ∈ ℤ

structure CharacterFormula where
  highestWeight : Weight
  character : CartanSubalgebra → ℂ
  weylDenominator : CartanSubalgebra → ℂ
  formula : ∀ H ∈ CartanSubalgebra, 
    character H = (∑ w ∈ weylGroup, sign(w) * exp (w(highestWeight)(H))) / weylDenominator H

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse