import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure MorseExistencePackage where
  manifold : Type u
  smoothManifold : SmoothManifold ℝ manifold
  morseFunction : manifold → ℝ
  criticalPoints : Set manifold
  nondegeneracyCondition : Prop
  compactnessCondition : Prop
  existenceConclusion : criticalPoints.Nonempty

structure MorseExistenceEvidence (M : MorseExistencePackage) where
  nondegeneracyConditionClosed : M.nondegeneracyCondition
  compactnessConditionClosed : M.compactnessCondition
  existenceConclusionClosed : M.existenceConclusion

def MorseExistenceClosed (M : MorseExistencePackage) : Prop :=
  M.nondegeneracyCondition ∧ M.compactnessCondition ∧ M.existenceConclusion

theorem morse_existence_closed_from_evidence (M : MorseExistencePackage)
    (E : MorseExistenceEvidence M) : MorseExistenceClosed M := by
  exact And.intro E.nondegeneracyConditionClosed
    (And.intro E.compactnessConditionClosed E.existenceConclusionClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse