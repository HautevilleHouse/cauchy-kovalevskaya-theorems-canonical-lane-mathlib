import CauchyKovalevskayaTheoremsCanonicalLaneLean.PDEAnalyticSystem

/-!
# Local Existence Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsCanonicalLaneLean

structure LocalExistencePackage (P : PDEAnalyticSystemPackage) where
  solutionExists : Prop
  solutionAnalytic : Prop
  uniqueness : Prop
  existenceInterval : Prop

structure LocalExistenceEvidence {P : PDEAnalyticSystemPackage} (L : LocalExistencePackage P) where
  solutionExistsClosed : L.solutionExists
  solutionAnalyticClosed : L.solutionAnalytic
  uniquenessClosed : L.uniqueness
  existenceIntervalClosed : L.existenceInterval

def LocalExistenceClosed {P : PDEAnalyticSystemPackage} (L : LocalExistencePackage P) : Prop :=
  L.solutionExists ∧ L.solutionAnalytic ∧ L.uniqueness ∧ L.existenceInterval

theorem local_existence_closed_from_evidence
    {P : PDEAnalyticSystemPackage} (L : LocalExistencePackage P)
    (E : LocalExistenceEvidence L) : LocalExistenceClosed L := by
  exact And.intro E.solutionExistsClosed
    (And.intro E.solutionAnalyticClosed
      (And.intro E.uniquenessClosed E.existenceIntervalClosed))

end CauchyKovalevskayaTheoremsCanonicalLaneLean
end HautevilleHouse