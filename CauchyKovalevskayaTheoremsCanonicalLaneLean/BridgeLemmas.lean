import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CauchyKovalevskayaTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

def bridgeClosed (A : CauchyKovalevskayaAdmittedObject) : Prop :=
  CauchyKovalevskayaWitnessClosed A

theorem bridge_from_admissible_class (A : CauchyKovalevskayaAdmittedObject) :
    bridgeClosed A := by
  exact A.cauchyKovalevskayaConclusion

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
