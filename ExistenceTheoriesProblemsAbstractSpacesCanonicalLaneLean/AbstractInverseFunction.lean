import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure InverseFunctionExistencePackage where
  banachSpaceSource : Type u
  banachSpaceTarget : Type v
  normedAddCommGroupSource : NormedAddCommGroup banachSpaceSource
  normedAddCommGroupTarget : NormedAddCommGroup banachSpaceTarget
  normedSpaceSource : NormedSpace ℝ banachSpaceSource
  normedSpaceTarget : NormedSpace ℝ banachSpaceTarget
  mapping : banachSpaceSource → banachSpaceTarget
  point : banachSpaceSource
  derivativeAtPoint : banachSpaceSource →L[ℝ] banachSpaceTarget
  derivativeInvertible : Prop
  mappingContinuouslyDifferentiable : Prop
  localInverseExistence : Prop

structure InverseFunctionExistenceEvidence (I : InverseFunctionExistencePackage) where
  derivativeInvertibleClosed : I.derivativeInvertible
  mappingContinuouslyDifferentiableClosed : I.mappingContinuouslyDifferentiable
  localInverseExistenceClosed : I.localInverseExistence

def InverseFunctionExistenceClosed (I : InverseFunctionExistencePackage) : Prop :=
  I.derivativeInvertible ∧ I.mappingContinuouslyDifferentiable ∧ I.localInverseExistence

theorem inverse_function_existence_closed_from_evidence
    (I : InverseFunctionExistencePackage) (E : InverseFunctionExistenceEvidence I) :
    InverseFunctionExistenceClosed I := by
  exact And.intro E.derivativeInvertibleClosed
    (And.intro E.mappingContinuouslyDifferentiableClosed E.localInverseExistenceClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse