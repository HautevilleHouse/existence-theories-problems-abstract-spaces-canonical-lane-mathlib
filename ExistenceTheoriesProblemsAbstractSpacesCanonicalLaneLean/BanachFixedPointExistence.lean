import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure BanachFixedPointPackage where
  space : Type u
  norm : space → ℝ
  completeNormed : Prop
  contraction : space → space
  contractionConstant : ℝ
  strictContraction : contractionConstant < 1
  fixedPoint : space
  existsUniqueFixedPoint : Prop

structure BanachFixedPointEvidence (B : BanachFixedPointPackage) where
  completeNormedClosed : B.completeNormed
  strictContractionClosed : B.strictContraction
  fixedPointClosed : B.fixedPoint
  existsUniqueFixedPointClosed : B.existsUniqueFixedPoint

def BanachFixedPointClosed (B : BanachFixedPointPackage) : Prop :=
  B.completeNormed ∧ B.strictContraction ∧ B.existsUniqueFixedPoint

theorem banach_fixed_point_closed_from_evidence (B : BanachFixedPointPackage) (E : BanachFixedPointEvidence B) : BanachFixedPointClosed B := by
  exact And.intro E.completeNormedClosed (And.intro E.strictContractionClosed E.existsUniqueFixedPointClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse