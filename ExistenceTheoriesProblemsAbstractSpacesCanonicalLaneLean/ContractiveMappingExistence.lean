import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure ContractiveMappingPackage where
  domain : Type u
  codomain : Type v
  metricDomain : Prop
  completeMetricDomain : domain → Prop
  contractiveMap : domain → codomain
  uniqueFixedPoint : Prop
  lipschitzConstant : ℝ

structure ContractiveMappingEvidence (C : ContractiveMappingPackage) where
  metricDomainClosed : C.metricDomain
  completeMetricDomainClosed : ∀ x : C.domain, C.completeMetricDomain x
  contractiveMapClosed : C.contractiveMap
  uniqueFixedPointClosed : C.uniqueFixedPoint
  lipschitzConstantClosed : C.lipschitzConstant

def ContractiveMappingClosed (C : ContractiveMappingPackage) : Prop :=
  C.metricDomain ∧ C.uniqueFixedPoint

theorem contractive_mapping_closed_from_evidence (C : ContractiveMappingPackage) (E : ContractiveMappingEvidence C) : ContractiveMappingClosed C := by
  exact And.intro E.metricDomainClosed E.uniqueFixedPointClosed

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse