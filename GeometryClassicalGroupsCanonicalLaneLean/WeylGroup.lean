import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryClassicalGroupsCanonicalLaneLean

structure WeylGroup (V : Type u) [AddCommGroup V] [Module ℝ V] (R : RootSystem V) where
  generators : Set (V → V)
  relations : Prop
  finiteCoxeterGroup : Prop
  reflections : Set (V → V)
  generatorsAreReflections : generators = R.rootReflections '' R.roots
  reflectionGenerators : Prop

structure WeylGroupEvidence (V : Type u) [AddCommGroup V] [Module ℝ V] (R : RootSystem V) (W : WeylGroup V R) where
  relationsClosed : W.relations
  finiteCoxeterGroupClosed : W.finiteCoxeterGroup
  generatorsAreReflectionsClosed : W.generators = R.rootReflections '' R.roots
  reflectionGeneratorsClosed : W.reflectionGenerators

def WeylGroupClosed (V : Type u) [AddCommGroup V] [Module ℝ V] (R : RootSystem V) (W : WeylGroup V R) : Prop :=
  W.relations ∧ W.finiteCoxeterGroup ∧ (W.generators = R.rootReflections '' R.roots) ∧ W.reflectionGenerators

theorem weyl_group_closed_from_evidence (V : Type u) [AddCommGroup V] [Module ℝ V] (R : RootSystem V) (W : WeylGroup V R)
    (E : WeylGroupEvidence V R W) : WeylGroupClosed V R W := by
  exact And.intro E.relationsClosed
    (And.intro E.finiteCoxeterGroupClosed
      (And.intro E.generatorsAreReflectionsClosed E.reflectionGeneratorsClosed))

end GeometryClassicalGroupsCanonicalLaneLean
end HautevilleHouse
