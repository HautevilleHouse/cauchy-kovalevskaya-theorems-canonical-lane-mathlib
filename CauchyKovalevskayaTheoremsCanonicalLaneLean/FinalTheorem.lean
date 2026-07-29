import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CauchyKovalevskayaTheoremsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

def ConstrainedCauchyKovalevskayaClosure (A : CauchyKovalevskayaAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cauchy_kovalevskaya_endgame (A : CauchyKovalevskayaAdmittedObject) :
    ConstrainedCauchyKovalevskayaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
