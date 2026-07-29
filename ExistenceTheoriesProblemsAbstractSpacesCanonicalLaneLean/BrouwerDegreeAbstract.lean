import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure BrouwerDegreePackage where
  sourceSpace : Type u
  targetSpace : Type v
  mapping : sourceSpace → targetSpace
  degree : ℤ
  continuousCondition : Prop
  properCondition : Prop
  degreeWellDefined : Prop

structure BrouwerDegreeEvidence (B : BrouwerDegreePackage) where
  continuousConditionClosed : B.continuousCondition
  properConditionClosed : B.properCondition
  degreeWellDefinedClosed : B.degreeWellDefined

def BrouwerDegreeClosed (B : BrouwerDegreePackage) : Prop :=
  B.continuousCondition ∧ B.properCondition ∧ B.degreeWellDefined

theorem brouwer_degree_closed_from_evidence (B : BrouwerDegreePackage)
    (E : BrouwerDegreeEvidence B) : BrouwerDegreeClosed B := by
  exact And.intro E.continuousConditionClosed
    (And.intro E.properConditionClosed E.degreeWellDefinedClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse