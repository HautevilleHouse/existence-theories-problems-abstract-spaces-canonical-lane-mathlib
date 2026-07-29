import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure WeakCompactnessPackage where
  space : Type u
  topology : TopologicalSpace space
  weakTopology : TopologicalSpace space
  banachAlaoglu : Prop
  weakStarCompact : Prop
  boundedSet : Set space
  weakStarClosureCompact : Prop

structure WeakCompactnessEvidence (W : WeakCompactnessPackage) where
  banachAlaogluClosed : W.banachAlaoglu
  weakStarCompactClosed : W.weakStarCompact
  boundedSetClosed : W.boundedSet
  weakStarClosureCompactClosed : W.weakStarClosureCompact

def WeakCompactnessClosed (W : WeakCompactnessPackage) : Prop :=
  W.banachAlaoglu ∧ W.weakStarClosureCompact

theorem weak_compactness_closed_from_evidence (W : WeakCompactnessPackage) (E : WeakCompactnessEvidence W) : WeakCompactnessClosed W := by
  exact And.intro E.banachAlaogluClosed E.weakStarClosureCompactClosed

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse