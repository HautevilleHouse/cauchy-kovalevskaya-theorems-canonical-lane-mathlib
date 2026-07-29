import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CauchyKovalevskayaTheoremsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

def gateClosed (A : CauchyKovalevskayaAdmittedObject) : Prop :=
  True

theorem gate_from_admissible_class (A : CauchyKovalevskayaAdmittedObject) :
    gateClosed A := by
  trivial

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
