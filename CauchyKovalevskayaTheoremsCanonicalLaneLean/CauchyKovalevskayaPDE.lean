import canonicalLaneMathlib.AdmissibleClass

/-!
# Cauchy-Kovalevskaya PDE Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyKovalevskayaPDEPackage where
  dependentVariables : ℕ
  independentVariables : ℕ
  analyticCoefficients : Prop
  normalForm : Prop
  initialDataAnalytic : Prop

structure CauchyKovalevskayaPDEEvidence (P : CauchyKovalevskayaPDEPackage) where
  analyticCoefficientsClosed : P.analyticCoefficients
  normalFormClosed : P.normalForm
  initialDataAnalyticClosed : P.initialDataAnalytic

def CauchyKovalevskayaPDEClosed (P : CauchyKovalevskayaPDEPackage) : Prop :=
  P.analyticCoefficients ∧ P.normalForm ∧ P.initialDataAnalytic

theorem cauchy_kovalevskaya_pde_closed_from_evidence
    (P : CauchyKovalevskayaPDEPackage) (E : CauchyKovalevskayaPDEEvidence P) :
    CauchyKovalevskayaPDEClosed P := by
  exact And.intro E.analyticCoefficientsClosed
    (And.intro E.normalFormClosed E.initialDataAnalyticClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
