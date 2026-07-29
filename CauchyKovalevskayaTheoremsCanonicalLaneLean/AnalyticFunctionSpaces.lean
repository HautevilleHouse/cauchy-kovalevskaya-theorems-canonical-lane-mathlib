import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure AnalyticFunctionSpacesPackage where
  ringOfConvergence : Type u
  analyticGerm : Prop
  CauchyEstimate : Prop
  majorantMethod : Prop

structure AnalyticFunctionSpacesEvidence (A : AnalyticFunctionSpacesPackage) where
  analyticGermClosed : A.analyticGerm
  CauchyEstimateClosed : A.CauchyEstimate
  majorantMethodClosed : A.majorantMethod

def AnalyticFunctionSpacesClosed (A : AnalyticFunctionSpacesPackage) : Prop :=
  A.analyticGerm ∧ A.CauchyEstimate ∧ A.majorantMethod

theorem analytic_function_spaces_closed_from_evidence (A : AnalyticFunctionSpacesPackage)
    (E : AnalyticFunctionSpacesEvidence A) : AnalyticFunctionSpacesClosed A := by
  exact And.intro E.analyticGermClosed (And.intro E.CauchyEstimateClosed E.majorantMethodClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse