import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.ExistenceTheoryAbstractBase

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure TopologicalExistencePackage where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  compactnessCondition : Prop
  continuityCondition : Prop
  existenceResult : Prop

structure TopologicalExistenceEvidence (T : TopologicalExistencePackage) where
  compactnessConditionClosed : T.compactnessCondition
  continuityConditionClosed : T.continuityCondition
  existenceResultClosed : T.existenceResult

def TopologicalExistenceClosure (T : TopologicalExistencePackage) : Prop :=
  T.compactnessCondition ∧ T.continuityCondition ∧ T.existenceResult

theorem topological_existence_closed_from_evidence (T : TopologicalExistencePackage)
    (Tv : TopologicalExistenceEvidence T) : TopologicalExistenceClosure T := by
  exact And.intro Tv.compactnessConditionClosed
    (And.intro Tv.continuityConditionClosed Tv.existenceResultClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
