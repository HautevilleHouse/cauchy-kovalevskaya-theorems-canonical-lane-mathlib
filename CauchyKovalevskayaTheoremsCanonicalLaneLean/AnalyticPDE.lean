import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure AnalyticPDESystem where
  independentVarCount : Nat
  dependentVarCount : Nat
  equations : Type u
  analyticCoefficients : Prop
  analyticNonlinearity : Prop
  order : Nat

structure AnalyticPDEEvidence (S : AnalyticPDESystem) where
  analyticCoefficientsClosed : S.analyticCoefficients
  analyticNonlinearityClosed : S.analyticNonlinearity
  orderCompatibility : S.order > 0

def AnalyticPDEClosed (S : AnalyticPDESystem) : Prop :=
  S.analyticCoefficients ∧ S.analyticNonlinearity ∧ S.order > 0

theorem analytic_pde_closed_from_evidence
    (S : AnalyticPDESystem) (E : AnalyticPDEEvidence S) :
    AnalyticPDEClosed S := by
  exact And.intro E.analyticCoefficientsClosed
    (And.intro E.analyticNonlinearityClosed E.orderCompatibility)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse