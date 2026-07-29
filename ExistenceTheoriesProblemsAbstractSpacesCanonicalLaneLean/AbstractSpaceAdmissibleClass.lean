import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure AbstractExistenceProblem where
  domain : Type u
  constraints : domain → Prop
  existenceClaim : Prop
  uniquenessClaim : Prop

structure ExistenceAdmissibleObject where
  problem : AbstractExistenceProblem
  constraintsSatisfied : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure AdmissibleClass where
  object : ExistenceAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse