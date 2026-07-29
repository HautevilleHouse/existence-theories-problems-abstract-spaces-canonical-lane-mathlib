import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure BaireCategoryPackage where
  space : Type u
  topology : TopologicalSpace space
  completeMetric : Prop
  baireProperty : Prop
  countableIntersectionDense : Prop

structure BaireCategoryEvidence (B : BaireCategoryPackage) where
  completeMetricClosed : B.completeMetric
  bairePropertyClosed : B.baireProperty
  countableIntersectionDenseClosed : B.countableIntersectionDense

def BaireCategoryClosed (B : BaireCategoryPackage) : Prop :=
  B.baireProperty ∧ B.countableIntersectionDense

theorem baire_category_closed_from_evidence (B : BaireCategoryPackage) (E : BaireCategoryEvidence B) : BaireCategoryClosed B := by
  exact And.intro E.bairePropertyClosed E.countableIntersectionDenseClosed

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse