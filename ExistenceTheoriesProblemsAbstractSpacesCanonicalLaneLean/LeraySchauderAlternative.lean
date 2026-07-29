import ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.TopologicalExistence

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure LeraySchauderAlternativePackage (T : TopologicalExistencePackage) where
  compactMapping : Prop
  homotopyInvariant : Prop
  alternativeConclusion : Prop
  existenceFromAlternative : Prop

structure LeraySchauderAlternativeEvidence {T : TopologicalExistencePackage} (L : LeraySchauderAlternativePackage T) where
  compactMappingClosed : L.compactMapping
  homotopyInvariantClosed : L.homotopyInvariant
  alternativeConclusionClosed : L.alternativeConclusion
  existenceFromAlternativeClosed : L.existenceFromAlternative

def LeraySchauderAlternativeClosed {T : TopologicalExistencePackage} (L : LeraySchauderAlternativePackage T) : Prop :=
  L.compactMapping ∧ L.homotopyInvariant ∧ L.alternativeConclusion ∧ L.existenceFromAlternative

theorem leray_schauder_alternative_closed_from_evidence
    {T : TopologicalExistencePackage} (L : LeraySchauderAlternativePackage T) (E : LeraySchauderAlternativeEvidence L) :
    LeraySchauderAlternativeClosed L := by
  exact And.intro E.compactMappingClosed (And.intro E.homotopyInvariantClosed (And.intro E.alternativeConclusionClosed E.existenceFromAlternativeClosed))

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse