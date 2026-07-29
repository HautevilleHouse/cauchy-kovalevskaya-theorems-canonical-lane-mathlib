import CauchyKovalevskayaTheoremsCanonicalLaneLean.CauchyKovalevskayaPDE

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure DomainOfAnalyticityPackage {P : CauchyKovalevskayaPDEPackage} where
  domainType : String
  convergenceRadius : ℝ
  germAnalytic : Prop
  multiIndexSummability : Prop
  cauchyEstimates : Prop

structure DomainOfAnalyticityEvidence {P : CauchyKovalevskayaPDEPackage} (D : DomainOfAnalyticityPackage P) where
  germAnalyticClosed : D.germAnalytic
  multiIndexSummabilityClosed : D.multiIndexSummability
  cauchyEstimatesClosed : D.cauchyEstimates

def DomainOfAnalyticityClosed {P : CauchyKovalevskayaPDEPackage} (D : DomainOfAnalyticityPackage P) : Prop :=
  D.germAnalytic ∧ D.multiIndexSummability ∧ D.cauchyEstimates

theorem domain_of_analyticity_closed_from_evidence
    {P : CauchyKovalevskayaPDEPackage} (D : DomainOfAnalyticityPackage P)
    (E : DomainOfAnalyticityEvidence D) : DomainOfAnalyticityClosed D := by
  exact And.intro E.germAnalyticClosed (And.intro E.multiIndexSummabilityClosed E.cauchyEstimatesClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse