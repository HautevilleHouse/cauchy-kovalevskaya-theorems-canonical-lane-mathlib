import HautevilleHouse.CauchyKovalevskayaTheoremsCanonicalLaneLean.CauchyKovalevskayaSystem

/-!
# Analyticity Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure AnalyticityPackage {S : CKSystem} where
  domainOfAnalyticity : Type u
  powerSeriesExpansion : Prop
  radiusOfConvergence : Prop
  cauchyEstimates : Prop
  analyticContinuation : Prop

structure AnalyticityEvidence {S : CKSystem} (A : AnalyticityPackage S) where
  powerSeriesExpansionClosed : A.powerSeriesExpansion
  radiusOfConvergenceClosed : A.radiusOfConvergence
  cauchyEstimatesClosed : A.cauchyEstimates
  analyticContinuationClosed : A.analyticContinuation

def AnalyticityClosed {S : CKSystem} (A : AnalyticityPackage S) : Prop :=
  A.powerSeriesExpansion ∧ A.radiusOfConvergence ∧ A.cauchyEstimates ∧ A.analyticContinuation

theorem analyticity_closed_from_evidence {S : CKSystem} (A : AnalyticityPackage S) (E : AnalyticityEvidence A) :
    AnalyticityClosed A := by
  exact And.intro E.powerSeriesExpansionClosed
    (And.intro E.radiusOfConvergenceClosed
      (And.intro E.cauchyEstimatesClosed E.analyticContinuationClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse
