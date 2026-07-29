import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.ExistenceTheoryAbstractBase

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure FixedPointPackage where
  mapping : Type → Type
  contractionConstant : ℝ
  fixedPointExists : Prop
  uniqueFixedPoint : Prop
  iterativeConvergence : Prop

structure FixedPointEvidence (F : FixedPointPackage) where
  contractionInequality : F.contractionConstant < 1
  completeMetricSpace : Prop
  fixedPointExistsClosed : F.fixedPointExists
  uniqueFixedPointClosed : F.uniqueFixedPoint
  iterativeConvergenceClosed : F.iterativeConvergence

def FixedPointClosure (F : FixedPointPackage) : Prop :=
  F.fixedPointExists ∧ F.uniqueFixedPoint ∧ F.iterativeConvergence

theorem fixed_point_closed_from_evidence (F : FixedPointPackage)
    (Fv : FixedPointEvidence F) : FixedPointClosure F := by
  exact And.intro Fv.fixedPointExistsClosed
    (And.intro Fv.uniqueFixedPointClosed Fv.iterativeConvergenceClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
