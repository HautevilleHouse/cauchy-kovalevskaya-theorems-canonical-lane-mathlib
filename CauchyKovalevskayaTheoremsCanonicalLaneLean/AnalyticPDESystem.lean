import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CauchyKovalevskayaTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure AnalyticPDESystemPackage where
  dimension : Nat
  order : Nat
  nonlinear : Prop
  analyticCoefficients : Prop
  analyticInitialData : Prop
  uniqueLocalSolution : Prop

structure AnalyticPDESystemEvidence (S : AnalyticPDESystemPackage) where
  nonlinearClosed : S.nonlinear
  analyticCoefficientsClosed : S.analyticCoefficients
  analyticInitialDataClosed : S.analyticInitialData
  uniqueLocalSolutionClosed : S.uniqueLocalSolution

def AnalyticPDESystemClosed (S : AnalyticPDESystemPackage) : Prop :=
  S.nonlinear ∧ S.analyticCoefficients ∧ S.analyticInitialData ∧ S.uniqueLocalSolution

theorem analytic_pde_system_closed_from_evidence (S : AnalyticPDESystemPackage) (E : AnalyticPDESystemEvidence S) :
    AnalyticPDESystemClosed S := by
  exact And.intro E.nonlinearClosed (And.intro E.analyticCoefficientsClosed (And.intro E.analyticInitialDataClosed E.uniqueLocalSolutionClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
