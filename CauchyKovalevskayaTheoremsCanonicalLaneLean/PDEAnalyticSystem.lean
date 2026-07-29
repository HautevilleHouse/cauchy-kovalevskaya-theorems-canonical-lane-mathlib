import CauchyKovalevskayaTheoremsCanonicalLaneLean.CauchyDataPackage

/-!
# PDE Analytic System Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure PDEAnalyticSystemPackage where
  dimension : ℕ
  unknowns : ℕ
  equations : ℕ
  coefficientFunctions : Prop
  analyticCoefficients : Prop
  systemOrder : ℕ
  cauchyData : AnalyticCauchyDataPackage

structure PDEAnalyticSystemEvidence (P : PDEAnalyticSystemPackage) where
  analyticCoefficientsClosed : P.analyticCoefficients
  systemOrderClosed : P.systemOrder = 1
  cauchyDataCompatible : P.cauchyData.analyticData

def PDEAnalyticSystemClosed (P : PDEAnalyticSystemPackage) : Prop :=
  P.analyticCoefficients ∧ P.systemOrder = 1 ∧ P.cauchyData.analyticData

theorem pde_analytic_system_closed_from_evidence
    (P : PDEAnalyticSystemPackage) (E : PDEAnalyticSystemEvidence P) :
    PDEAnalyticSystemClosed P := by
  exact And.intro E.analyticCoefficientsClosed
    (And.intro E.systemOrderClosed E.cauchyDataCompatible)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse