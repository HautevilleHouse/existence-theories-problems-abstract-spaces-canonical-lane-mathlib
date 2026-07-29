import ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.ExistenceCriteria

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure AbstractFixedPointPackage (P : ExistenceCriteriaPackage) where
  mappingContractive : Prop
  iterationConverges : Prop
  fixedPointExists : Prop
  fixedPointUnique : Prop

structure AbstractFixedPointEvidence {P : ExistenceCriteriaPackage} (F : AbstractFixedPointPackage P) where
  mappingContractiveClosed : F.mappingContractive
  iterationConvergesClosed : F.iterationConverges
  fixedPointExistsClosed : F.fixedPointExists
  fixedPointUniqueClosed : F.fixedPointUnique

def AbstractFixedPointClosed {P : ExistenceCriteriaPackage} (F : AbstractFixedPointPackage P) : Prop :=
  F.mappingContractive ∧ F.iterationConverges ∧ F.fixedPointExists ∧ F.fixedPointUnique

theorem abstract_fixed_point_closed_from_evidence
    {P : ExistenceCriteriaPackage} (F : AbstractFixedPointPackage P) (E : AbstractFixedPointEvidence F) :
    AbstractFixedPointClosed F := by
  exact And.intro E.mappingContractiveClosed (And.intro E.iterationConvergesClosed (And.intro E.fixedPointExistsClosed E.fixedPointUniqueClosed))

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse