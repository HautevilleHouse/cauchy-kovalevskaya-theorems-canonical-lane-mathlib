import CauchyKovalevskayaTheoremsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CKSystem where
  systemType : Prop
  order : Nat
  numberOfEquations : Nat
  variables : List Type
  analyticCoefficients : Prop
  cauchyDataOnNoncharacteristic : Prop

structure CKEvidence (S : CKSystem) where
  systemTypeClosed : S.systemType
  analyticCoefficientsClosed : S.analyticCoefficients
  cauchyDataOnNoncharacteristicClosed : S.cauchyDataOnNoncharacteristic

def CKSystemClosed (S : CKSystem) : Prop :=
  S.systemType ∧ S.analyticCoefficients ∧ S.cauchyDataOnNoncharacteristic

theorem ck_system_closed_from_evidence (S : CKSystem) (E : CKEvidence S) : CKSystemClosed S := by
  exact And.intro E.systemTypeClosed (And.intro E.analyticCoefficientsClosed E.cauchyDataOnNoncharacteristicClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse