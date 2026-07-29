import CauchyKovalevskayaTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure AnalyticSystemPackage where
  domainDim : Nat
  codomainDim : Nat
  order : Nat
  nonlinearity : Prop
  analyticCoefficients : Prop
  nonCharacteristicInitialSurface : Prop

structure AnalyticSystemEvidence (S : AnalyticSystemPackage) where
  analyticCoefficientsClosed : S.analyticCoefficients
  nonCharacteristicInitialSurfaceClosed : S.nonCharacteristicInitialSurface

def AnalyticSystemClosed (S : AnalyticSystemPackage) : Prop :=
  S.analyticCoefficients ∧ S.nonCharacteristicInitialSurface

theorem analytic_system_closed_from_evidence (S : AnalyticSystemPackage)
    (E : AnalyticSystemEvidence S) : AnalyticSystemClosed S := by
  exact And.intro E.analyticCoefficientsClosed E.nonCharacteristicInitialSurfaceClosed

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse