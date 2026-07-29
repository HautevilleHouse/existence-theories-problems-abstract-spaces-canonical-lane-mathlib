import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure FixedPointExistencePackage where
  space : Type u
  topology : TopologicalSpace space
  mapping : space → space
  fixedPointSet : Set space
  completenessCondition : Prop
  contractiveCondition : Prop
  existenceConclusion : FixedPointSet.Nonempty

structure FixedPointExistenceEvidence (F : FixedPointExistencePackage) where
  completenessConditionClosed : F.completenessCondition
  contractiveConditionClosed : F.contractiveCondition
  existenceConclusionClosed : F.existenceConclusion

def FixedPointExistenceClosed (F : FixedPointExistencePackage) : Prop :=
  F.completenessCondition ∧ F.contractiveCondition ∧ F.existenceConclusion

theorem fixed_point_existence_closed_from_evidence (F : FixedPointExistencePackage)
    (E : FixedPointExistenceEvidence F) : FixedPointExistenceClosed F := by
  exact And.intro E.completenessConditionClosed
    (And.intro E.contractiveConditionClosed E.existenceConclusionClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse