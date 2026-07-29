import ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.AbstractSpaceAdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure ExistenceCriteriaPackage where
  compactnessCondition : Prop
  coercivityCondition : Prop
  monotonicityCondition : Prop
  existenceDerived : Prop

structure ExistenceCriteriaEvidence (P : ExistenceCriteriaPackage) where
  compactnessConditionClosed : P.compactnessCondition
  coercivityConditionClosed : P.coercivityCondition
  monotonicityConditionClosed : P.monotonicityCondition
  existenceDerivedClosed : P.existenceDerived

def ExistenceCriteriaClosed (P : ExistenceCriteriaPackage) : Prop :=
  P.compactnessCondition ∧ P.coercivityCondition ∧ P.monotonicityCondition ∧ P.existenceDerived

theorem existence_criteria_closed_from_evidence (P : ExistenceCriteriaPackage) (E : ExistenceCriteriaEvidence P) :
    ExistenceCriteriaClosed P := by
  exact And.intro E.compactnessConditionClosed (And.intro E.coercivityConditionClosed (And.intro E.monotonicityConditionClosed E.existenceDerivedClosed))

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse