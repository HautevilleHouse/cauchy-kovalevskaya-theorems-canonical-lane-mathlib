import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyKovalevskayaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CauchyKovalevskayaAdmittedObject where
  space : CauchyKovalevskayaSpace
  analyticStructure : Prop
  pdeWellPosed : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionExists : Prop
  conclusion : solutionExists

structure CauchyKovalevskayaEndgameState where
  object : CauchyKovalevskayaAdmittedObject

def CauchyKovalevskayaWitnessClosed (O : CauchyKovalevskayaAdmittedObject) : Prop :=
  O.solutionExists

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
