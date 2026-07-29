import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure LyapunovSchmidtReductionPackage where
  banachSpace : Type u
  normedAddCommGroup : NormedAddCommGroup banachSpace
  normedSpace : NormedSpace ℝ banachSpace
  nonlinearOperator : banachSpace → banachSpace
  bifurcationPoint : banachSpace
  kernelFiniteDimensional : Prop
  rangeClosed : Prop
  lyapunovSchmidtReduced : Prop

structure LyapunovSchmidtReductionEvidence (L : LyapunovSchmidtReductionPackage) where
  kernelFiniteDimensionalClosed : L.kernelFiniteDimensional
  rangeClosedClosed : L.rangeClosed
  lyapunovSchmidtReducedClosed : L.lyapunovSchmidtReduced

def LyapunovSchmidtReductionClosed (L : LyapunovSchmidtReductionPackage) : Prop :=
  L.kernelFiniteDimensional ∧ L.rangeClosed ∧ L.lyapunovSchmidtReduced

theorem lyapunov_schmidt_reduction_closed_from_evidence
    (L : LyapunovSchmidtReductionPackage) (E : LyapunovSchmidtReductionEvidence L) :
    LyapunovSchmidtReductionClosed L := by
  exact And.intro E.kernelFiniteDimensionalClosed
    (And.intro E.rangeClosedClosed E.lyapunovSchmidtReducedClosed)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse