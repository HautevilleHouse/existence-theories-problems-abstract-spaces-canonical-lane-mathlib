import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : ExistenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExistenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse