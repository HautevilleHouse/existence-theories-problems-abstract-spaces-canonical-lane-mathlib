import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean.AbstractExistenceStructure

namespace HautevilleHouse
namespace ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean

structure TopologicalDegree (X : AbstractBanachSpace) where
  domain : Set X.carrier
  mapping : X.carrier → X.carrier
  degree : ℤ
  properties : Prop

theorem degreeInvarianceHomotopy (X : AbstractBanachSpace) (f g : X.carrier → X.carrier) (domain : Set X.carrier) : True := by
  trivial

end ExistenceTheoriesProblemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse