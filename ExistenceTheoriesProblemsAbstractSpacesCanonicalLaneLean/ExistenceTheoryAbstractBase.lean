import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure ExistenceAbstractPackage where
  existenceProblem : Prop
  existenceCondition : Prop
  existenceSolution : Prop
  uniquenessCondition : Prop
  continuousDependence : Prop

structure ExistenceAbstractEvidence (E : ExistenceAbstractPackage) where
  existenceProblemClosed : E.existenceProblem
  existenceConditionClosed : E.existenceCondition
  existenceSolutionClosed : E.existenceSolution
  uniquenessConditionClosed : E.uniquenessCondition
  continuousDependenceClosed : E.continuousDependence

def ExistenceAbstractClosure (E : ExistenceAbstractPackage) : Prop :=
  E.existenceProblem ∧ E.existenceCondition ∧ E.existenceSolution ∧
  E.uniquenessCondition ∧ E.continuousDependence

theorem existence_abstract_closed_from_evidence (E : ExistenceAbstractPackage)
    (Ev : ExistenceAbstractEvidence E) : ExistenceAbstractClosure E := by
  exact And.intro Ev.existenceProblemClosed
    (And.intro Ev.existenceConditionClosed
      (And.intro Ev.existenceSolutionClosed
        (And.intro Ev.uniquenessConditionClosed Ev.continuousDependenceClosed)))

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
