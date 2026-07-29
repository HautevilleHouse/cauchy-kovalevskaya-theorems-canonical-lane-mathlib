import CauchyKovalevskayaTheoremsCanonicalLaneLean.BridgeLemmas

/-!
# Analytic Cauchy Data Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure AnalyticCauchyDataPackage where
  initialSurface : Type u
  initialSurfaceAnalytic : Prop
  dataFunctions : Prop
  analyticData : Prop

structure AnalyticCauchyDataEvidence (C : AnalyticCauchyDataPackage) where
  initialSurfaceAnalyticClosed : C.initialSurfaceAnalytic
  dataFunctionsClosed : C.dataFunctions
  analyticDataClosed : C.analyticData

def AnalyticCauchyDataClosed (C : AnalyticCauchyDataPackage) : Prop :=
  C.initialSurfaceAnalytic ∧ C.dataFunctions ∧ C.analyticData

theorem analytic_cauchy_data_closed_from_evidence
    (C : AnalyticCauchyDataPackage) (E : AnalyticCauchyDataEvidence C) :
    AnalyticCauchyDataClosed C := by
  exact And.intro E.initialSurfaceAnalyticClosed
    (And.intro E.dataFunctionsClosed E.analyticDataClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse