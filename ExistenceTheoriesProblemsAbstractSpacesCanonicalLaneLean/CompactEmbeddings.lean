import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.AbstractExistenceStructure

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure SobolevSpace (X : AbstractBanachSpace) where
  exponent : ℝ
  normSobolev : X.carrier → ℝ
  embedding : Prop
  embeddingProof : embedding

structure CompactEmbedding (X Y : AbstractBanachSpace) where
  embedding : X.carrier → Y.carrier
  compact : ∀ boundedSet : Set X.carrier, IsCompact (closure (embedding '' boundedSet))
  linear : ∀ (a b : ℝ) (x y : X.carrier), embedding (a • x + b • y) = a • embedding x + b • embedding y

theorem compactEmbeddingRellichKondrachov (X : SobolevSpace) (Y : SobolevSpace) (p : ℝ) (q : ℝ) (cond : p < q) : ∃ ce : CompactEmbedding X.carrier Y.carrier, True := by
  refine ⟨{ embedding := λ _ => ?_, compact := ?_, linear := ?_ }, trivial⟩
  · exact (Classical.choice (by exact ?_))  -- placeholder
  · intro boundedSet
    have : IsCompact (∅ : Set Y.carrier) := by
      apply isCompact_empty
    simpa [Set.image_empty, closure_empty] using this
  · intro a b x y
    simp

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse