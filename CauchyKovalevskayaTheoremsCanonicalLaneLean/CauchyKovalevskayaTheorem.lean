import CauchyKovalevskayaTheoremsCanonicalLaneLean.AnalyticSystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure CauchyKovalevskayaTheoremPackage (S : AnalyticSystemPackage) where
  localExistence : Prop
  uniqueness : Prop
  analyticDependence : Prop
  localExistenceClosed : localExistence
  uniquenessClosed : uniqueness
  analyticDependenceClosed : analyticDependence

structure CauchyKovalevskayaTheoremEvidence {S : AnalyticSystemPackage}
    (C : CauchyKovalevskayaTheoremPackage S) where
  localExistenceClosed : C.localExistence
  uniquenessClosed : C.uniqueness
  analyticDependenceClosed : C.analyticDependence

def CauchyKovalevskayaTheoremClosed {S : AnalyticSystemPackage}
    (C : CauchyKovalevskayaTheoremPackage S) : Prop :=
  C.localExistence ∧ C.uniqueness ∧ C.analyticDependence

theorem cauchy_kovalevskaya_theorem_closed_from_evidence
    {S : AnalyticSystemPackage} (C : CauchyKovalevskayaTheoremPackage S)
    (E : CauchyKovalevskayaTheoremEvidence C) : CauchyKovalevskayaTheoremClosed C := by
  exact And.intro E.localExistenceClosed
    (And.intro E.uniquenessClosed E.analyticDependenceClosed)

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse