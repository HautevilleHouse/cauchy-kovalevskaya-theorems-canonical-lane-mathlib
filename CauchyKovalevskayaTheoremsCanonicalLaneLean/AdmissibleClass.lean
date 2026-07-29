import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyKovalevskayaAdmittedObject where
  system : Type u
  analyticData : Type v
  initialCondition : Type w
  cauchyKovalevskayaConclusion : Prop

def CauchyKovalevskayaWitnessClosed (O : CauchyKovalevskayaAdmittedObject) : Prop :=
  O.cauchyKovalevskayaConclusion

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
