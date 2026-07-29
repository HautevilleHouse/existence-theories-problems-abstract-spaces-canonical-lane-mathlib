import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure HilbertProjectionPackage where
  space : Type u
  innerProduct : space → space → ℝ
  complete : Prop
  closedConvexSet : Set space
  closestPoint : space
  projectionExists : Prop
  projectionUnique : Prop

structure HilbertProjectionEvidence (H : HilbertProjectionPackage) where
  completeClosed : H.complete
  closedConvexSetClosed : H.closedConvexSet
  closestPointClosed : H.closestPoint
  projectionExistsClosed : H.projectionExists
  projectionUniqueClosed : H.projectionUnique

def HilbertProjectionClosed (H : HilbertProjectionPackage) : Prop :=
  H.projectionExists ∧ H.projectionUnique

theorem hilbert_projection_closed_from_evidence (H : HilbertProjectionPackage) (E : HilbertProjectionEvidence H) : HilbertProjectionClosed H := by
  exact And.intro E.projectionExistsClosed E.projectionUniqueClosed

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse