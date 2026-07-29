import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure ExistenceAdmittedObject where
  problemSpace : Type
  solutionSpace : Type
  existenceCondition : Prop
  conclusion : existenceCondition

def ExistenceWitnessClosed (O : ExistenceAdmittedObject) : Prop :=
  O.existenceCondition

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse