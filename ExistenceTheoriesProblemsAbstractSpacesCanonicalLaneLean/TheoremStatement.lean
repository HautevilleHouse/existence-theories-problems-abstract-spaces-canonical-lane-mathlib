import ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  existenceConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  existenceConstrainedStatement := "existence-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def ExistenceConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "existence_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  ExistenceConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  unfold ClassicalSourceBoundaryCarried
  constructor
  · rfl
  · rfl

theorem existence_constrained_theorem_closed_checked :
    ExistenceConstrainedTheoremClosed := by
  unfold ExistenceConstrainedTheoremClosed
  refine And.intro rfl ?_
  exact And.intro rfl rfl

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  unfold TheoremLayerInternalized
  refine And.intro rfl (And.intro rfl ?_)
  exact And.intro classical_source_boundary_carried_checked existence_constrained_theorem_closed_checked

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse